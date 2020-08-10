import json

class jsonParser:
    def __init__(self, json_file="coverage.json"):
        self.json_file = json_file
        self.getBaseJsonMap()
        self.baseLineCoverage = self.getBaseLineCoverage()

    def getBaseJsonMap(self):
        with open(self.json_file) as file:
            self.json_map = json.load(file)
        file.close()

    def getNewJsonMap(self):
        with open(self.json_file) as file:
            self.new_json_map = json.load(file)
        file.close()

    def getBaseLineCoverage(self):
        total_branches_visited = 0
        total_branch_count = 0

        for a in range(len(self.json_map["files"])):
            for b in range(len(self.json_map["files"][a]["lines"])):
                for c in range(len(self.json_map["files"][a]["lines"][b]["branches"])):
                    if self.json_map["files"][a]["lines"][b]["branches"][c]["count"] > 0:
                        total_branches_visited += 1
                        self.json_map["files"][a]["lines"][b]["branches"][c]["visited"] = True
                    else:
                        self.json_map["files"][a]["lines"][b]["branches"][c]["visited"] = False
                    total_branch_count += 1

        self.total_branch_count = total_branch_count
        self.unique_branches = total_branches_visited


        return (float(total_branches_visited) / float(total_branch_count)) * 100.0

    def getNewCoverage(self):
        self.getNewJsonMap()
        increase = False
        for a in range(len(self.new_json_map["files"])):
            for b in range(len(self.new_json_map["files"][a]["lines"])):
                for c in range(len(self.new_json_map["files"][a]["lines"][b]["branches"])):
                    if self.new_json_map["files"][a]["lines"][b]["branches"][c]["count"] > 0 and self.json_map["files"][a]["lines"][b]["branches"][c]["visited"]==False:
                        #self.total_branch_count += 1
                        self.unique_branches += 1
                        self.json_map["files"][a]["lines"][b]["branches"][c]["visited"] = True
                        increase = True
        return increase, (float(self.unique_branches)/float(self.total_branch_count)) * 100



'''branch_coverage = (float(total_branches_visited) / float(total_branch_count)) * 100.0
print("total_branches_visited = %d" % (total_branches_visited))
print("total_branch_count = %d" % (total_branch_count))
print("branch coverage = %f %%" % (branch_coverage))'''

