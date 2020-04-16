def rounded_map(val,precision=3):
	ret = "{"
	for key in val:
		ret += "\'" + key + "\'" + ' : ' + str(round(val[key],prec)) + ","
	ret = ret[0:len(ret)-1]
	ret += "}"
	return ret

