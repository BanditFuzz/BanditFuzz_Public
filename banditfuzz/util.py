def LogPrint(msg,verbose = 1):
	assert isinstance(msg,str), "Bad input"
	if verbose <= 9999:
		print(msg,flush = True)

def roundedmap(val,prec):
	ret = "{"
	for key in val:
		ret += "\'" + key + "\'" + ' : ' + str(round(val[key],prec)) + ","
	ret = ret[0:len(ret)-1]
	ret += "}"
	return ret

