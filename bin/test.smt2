     1	#!/usr/bin/env python3
     2	from banditfuzz import BanditFuzz,warning,die,help_msg
     3	from banditfuzz.parser import args as settings
     4	import pdb,sys,traceback

     5	def main():
     6	    bfuzz = BanditFuzz()
     7	    print(bfuzz.fuzzer.gen())
     8	    # fuzzer.loop()

     9	if __name__ == "__main__":
    10	    try:
    11	        main()
    12	        if settings.debug: print("Completed evaluation without error.")
    13	    except Exception as e:
    14	        if settings.debug:
    15	            extype, value, tb = sys.exc_info()
    16	            traceback.print_exc()
    17	            pdb.post_mortem(tb)
    18	        else:
    19	            die("Internal failure: " + str(e))