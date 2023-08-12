# Alison K Wright, Evangelos Kontopantelis, Richard Emsley, Iain Buchan, Naveed Sattar, Martin K Rutter, Darren M. Ashcroft, 2023.

import sys, csv, re

codes = [{"code":"10135","system":"gprdproduct"},{"code":"10153","system":"gprdproduct"},{"code":"11512","system":"gprdproduct"},{"code":"11567","system":"gprdproduct"},{"code":"11965","system":"gprdproduct"},{"code":"11973","system":"gprdproduct"},{"code":"12613","system":"gprdproduct"},{"code":"12639","system":"gprdproduct"},{"code":"12705","system":"gprdproduct"},{"code":"1334","system":"gprdproduct"},{"code":"13672","system":"gprdproduct"},{"code":"13871","system":"gprdproduct"},{"code":"14305","system":"gprdproduct"},{"code":"1448","system":"gprdproduct"},{"code":"1449","system":"gprdproduct"},{"code":"14808","system":"gprdproduct"},{"code":"16073","system":"gprdproduct"},{"code":"16850","system":"gprdproduct"},{"code":"1686","system":"gprdproduct"},{"code":"17448","system":"gprdproduct"},{"code":"17474","system":"gprdproduct"},{"code":"17561","system":"gprdproduct"},{"code":"18223","system":"gprdproduct"},{"code":"18403","system":"gprdproduct"},{"code":"18606","system":"gprdproduct"},{"code":"19129","system":"gprdproduct"},{"code":"19690","system":"gprdproduct"},{"code":"1995","system":"gprdproduct"},{"code":"20093","system":"gprdproduct"},{"code":"20459","system":"gprdproduct"},{"code":"20468","system":"gprdproduct"},{"code":"21162","system":"gprdproduct"},{"code":"21216","system":"gprdproduct"},{"code":"21245","system":"gprdproduct"},{"code":"219","system":"gprdproduct"},{"code":"22208","system":"gprdproduct"},{"code":"23131","system":"gprdproduct"},{"code":"23505","system":"gprdproduct"},{"code":"23733","system":"gprdproduct"},{"code":"23736","system":"gprdproduct"},{"code":"23805","system":"gprdproduct"},{"code":"23823","system":"gprdproduct"},{"code":"2605","system":"gprdproduct"},{"code":"26228","system":"gprdproduct"},{"code":"26267","system":"gprdproduct"},{"code":"26269","system":"gprdproduct"},{"code":"26270","system":"gprdproduct"},{"code":"26309","system":"gprdproduct"},{"code":"2663","system":"gprdproduct"},{"code":"27136","system":"gprdproduct"},{"code":"2746","system":"gprdproduct"},{"code":"28128","system":"gprdproduct"},{"code":"28688","system":"gprdproduct"},{"code":"28788","system":"gprdproduct"},{"code":"28996","system":"gprdproduct"},{"code":"29145","system":"gprdproduct"},{"code":"30197","system":"gprdproduct"},{"code":"30199","system":"gprdproduct"},{"code":"30242","system":"gprdproduct"},{"code":"3061","system":"gprdproduct"},{"code":"31336","system":"gprdproduct"},{"code":"31676","system":"gprdproduct"},{"code":"32162","system":"gprdproduct"},{"code":"32922","system":"gprdproduct"},{"code":"33091","system":"gprdproduct"},{"code":"33659","system":"gprdproduct"},{"code":"34146","system":"gprdproduct"},{"code":"34185","system":"gprdproduct"},{"code":"34475","system":"gprdproduct"},{"code":"34824","system":"gprdproduct"},{"code":"34884","system":"gprdproduct"},{"code":"34945","system":"gprdproduct"},{"code":"34949","system":"gprdproduct"},{"code":"35084","system":"gprdproduct"},{"code":"3712","system":"gprdproduct"},{"code":"39447","system":"gprdproduct"},{"code":"4025","system":"gprdproduct"},{"code":"40633","system":"gprdproduct"},{"code":"410","system":"gprdproduct"},{"code":"41885","system":"gprdproduct"},{"code":"41979","system":"gprdproduct"},{"code":"4239","system":"gprdproduct"},{"code":"43184","system":"gprdproduct"},{"code":"43430","system":"gprdproduct"},{"code":"43512","system":"gprdproduct"},{"code":"43753","system":"gprdproduct"},{"code":"43790","system":"gprdproduct"},{"code":"43818","system":"gprdproduct"},{"code":"44168","system":"gprdproduct"},{"code":"45040","system":"gprdproduct"},{"code":"4635","system":"gprdproduct"},{"code":"46363","system":"gprdproduct"},{"code":"46526","system":"gprdproduct"},{"code":"47027","system":"gprdproduct"},{"code":"4732","system":"gprdproduct"},{"code":"47543","system":"gprdproduct"},{"code":"47614","system":"gprdproduct"},{"code":"47833","system":"gprdproduct"},{"code":"47907","system":"gprdproduct"},{"code":"48009","system":"gprdproduct"},{"code":"4808","system":"gprdproduct"},{"code":"491","system":"gprdproduct"},{"code":"4923","system":"gprdproduct"},{"code":"501","system":"gprdproduct"},{"code":"5112","system":"gprdproduct"},{"code":"5162","system":"gprdproduct"},{"code":"5326","system":"gprdproduct"},{"code":"5348","system":"gprdproduct"},{"code":"541","system":"gprdproduct"},{"code":"5477","system":"gprdproduct"},{"code":"5496","system":"gprdproduct"},{"code":"5618","system":"gprdproduct"},{"code":"568","system":"gprdproduct"},{"code":"582","system":"gprdproduct"},{"code":"7280","system":"gprdproduct"},{"code":"755","system":"gprdproduct"},{"code":"769","system":"gprdproduct"},{"code":"8068","system":"gprdproduct"},{"code":"8673","system":"gprdproduct"},{"code":"8978","system":"gprdproduct"},{"code":"8987","system":"gprdproduct"},{"code":"9269","system":"gprdproduct"},{"code":"9334","system":"gprdproduct"},{"code":"9386","system":"gprdproduct"},{"code":"9437","system":"gprdproduct"},{"code":"9708","system":"gprdproduct"},{"code":"9723","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antihypertensive-drugs-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antihypertensive-drugs-slowrelease---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antihypertensive-drugs-slowrelease---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antihypertensive-drugs-slowrelease---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)