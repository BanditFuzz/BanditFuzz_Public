from random import randint,choice
import copy
def replace_fixed_op_randomly(instance,op,gen):
	if op.isBoolean:
		ret = instance
		ret.val[0] = op
		while len(ret.val) < ret.val[0].nargs + 1:
			ret.val.append(gen.gen(1).val)
		while len(ret.val) > ret.val[0].nargs + 1:
			ret.val.pop()
		ret.val[0] = op
		return [ret,finished]
	if op.name == "const":
		N = instance.NumConsts()
		n = randint(0,N-1)
		ret = instance
		[ret.val,indx,finished] = replace_list_const(ret.val,n,0,gen)
		assert indx == n
		return [ret,finished]
	else: #op is nonboolean fp op
		N = instance.NumFloatOps()
		n = randint(0,N-1)
		ret = copy.deepcopy(instance)
		[ret.val,indx,finished] = replace_list_fpop(ret.val,n,op,0,0,gen)
		c = 0
		while indx == -1 and c < 10:
			ret = copy.deepcopy(instance)
			[ret.val,indx,finished] = replace_list_fpop(ret.val,n,op,0,0,gen)
			c+= 1
		assert indx == n or indx == -1
		return [ret,c == 10]
		
		
def replace_list_const(ast_list,n,indx,gen):
	#single float
	if len(ast_list) == 1:
		if indx == n:
			const = choice(gen.consts)
			while const.name == ast_list[0].name:
				const = choice(gen.consts)
			
			return [[const],indx+1,True]
		else:
			return [ast_list,indx+1,False]
	else:
		op = ast_list[0]
		start = 1
		if op.isRounded:
			start = 2
		for i in range(start,len(ast_list)):
			[ast_list[i], indx, done] = replace_list_const(ast_list,n,const,indx,gen)
			if done:
				break
		return [ast_list,indx,done]
	
def replace_list_fpop(ast_list,n,oper,indx,depth,gen):
	#single float
	#print(ast_list,n,indx,depth)
	if len(ast_list) == 1:
		return [ast_list,indx,False]
	else:
		op = ast_list[0]
		if not op.isBoolean:
			if indx == n:
				retForm = []
				if op.name == oper.name:
					return [ast_list,-1,True]
				
				retForm.append(oper)
				if oper.isRounded:
					retForm.append(gen.roundMode)
				start = 1
				if op.isRounded:
					start = 2	
				oper_indx = 0
				for i in range(oper.nargs):
					if oper_indx < op.nargs:
						retForm.append(ast_list[start])
						start += 1
						oper_indx += 1
					else:
						retForm.append(gen.gen(depth).val)
				return [retForm,indx,True]
			else:
				indx +=1
		start = 1
		if op.isRounded:
			start = 2
		for i in range(start,len(ast_list)):
			[ast_list[i], indx, done] = replace_list_fpop(ast_list[i],n,oper,indx,depth+1,gen)
			if done:
				break
		return [ast_list,indx,done]