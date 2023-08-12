# Alison K Wright, Evangelos Kontopantelis, Richard Emsley, Iain Buchan, Naveed Sattar, Martin K Rutter, Darren M. Ashcroft, 2023.

import sys, csv, re

codes = [{"code":"10429","system":"gprdproduct"},{"code":"11265","system":"gprdproduct"},{"code":"11793","system":"gprdproduct"},{"code":"12110","system":"gprdproduct"},{"code":"12354","system":"gprdproduct"},{"code":"12547","system":"gprdproduct"},{"code":"1288","system":"gprdproduct"},{"code":"13525","system":"gprdproduct"},{"code":"14738","system":"gprdproduct"},{"code":"1780","system":"gprdproduct"},{"code":"1807","system":"gprdproduct"},{"code":"18650","system":"gprdproduct"},{"code":"19055","system":"gprdproduct"},{"code":"19056","system":"gprdproduct"},{"code":"19182","system":"gprdproduct"},{"code":"2179","system":"gprdproduct"},{"code":"25494","system":"gprdproduct"},{"code":"3050","system":"gprdproduct"},{"code":"31708","system":"gprdproduct"},{"code":"32094","system":"gprdproduct"},{"code":"32837","system":"gprdproduct"},{"code":"33092","system":"gprdproduct"},{"code":"33724","system":"gprdproduct"},{"code":"33850","system":"gprdproduct"},{"code":"34034","system":"gprdproduct"},{"code":"34094","system":"gprdproduct"},{"code":"34265","system":"gprdproduct"},{"code":"34365","system":"gprdproduct"},{"code":"34407","system":"gprdproduct"},{"code":"34430","system":"gprdproduct"},{"code":"34443","system":"gprdproduct"},{"code":"34584","system":"gprdproduct"},{"code":"34695","system":"gprdproduct"},{"code":"34825","system":"gprdproduct"},{"code":"34925","system":"gprdproduct"},{"code":"34937","system":"gprdproduct"},{"code":"3517","system":"gprdproduct"},{"code":"36261","system":"gprdproduct"},{"code":"4068","system":"gprdproduct"},{"code":"41706","system":"gprdproduct"},{"code":"41743","system":"gprdproduct"},{"code":"43514","system":"gprdproduct"},{"code":"45916","system":"gprdproduct"},{"code":"46614","system":"gprdproduct"},{"code":"46674","system":"gprdproduct"},{"code":"46990","system":"gprdproduct"},{"code":"4725","system":"gprdproduct"},{"code":"48682","system":"gprdproduct"},{"code":"49268","system":"gprdproduct"},{"code":"5","system":"gprdproduct"},{"code":"51601","system":"gprdproduct"},{"code":"51933","system":"gprdproduct"},{"code":"52045","system":"gprdproduct"},{"code":"5249","system":"gprdproduct"},{"code":"52500","system":"gprdproduct"},{"code":"52659","system":"gprdproduct"},{"code":"53204","system":"gprdproduct"},{"code":"53215","system":"gprdproduct"},{"code":"53253","system":"gprdproduct"},{"code":"53414","system":"gprdproduct"},{"code":"54049","system":"gprdproduct"},{"code":"54057","system":"gprdproduct"},{"code":"54297","system":"gprdproduct"},{"code":"54679","system":"gprdproduct"},{"code":"54735","system":"gprdproduct"},{"code":"54752","system":"gprdproduct"},{"code":"54843","system":"gprdproduct"},{"code":"55296","system":"gprdproduct"},{"code":"55778","system":"gprdproduct"},{"code":"56104","system":"gprdproduct"},{"code":"57240","system":"gprdproduct"},{"code":"57817","system":"gprdproduct"},{"code":"581","system":"gprdproduct"},{"code":"59351","system":"gprdproduct"},{"code":"59695","system":"gprdproduct"},{"code":"59750","system":"gprdproduct"},{"code":"59834","system":"gprdproduct"},{"code":"59903","system":"gprdproduct"},{"code":"605","system":"gprdproduct"},{"code":"60603","system":"gprdproduct"},{"code":"6437","system":"gprdproduct"},{"code":"64973","system":"gprdproduct"},{"code":"65094","system":"gprdproduct"},{"code":"66011","system":"gprdproduct"},{"code":"66548","system":"gprdproduct"},{"code":"66551","system":"gprdproduct"},{"code":"6815","system":"gprdproduct"},{"code":"6816","system":"gprdproduct"},{"code":"708","system":"gprdproduct"},{"code":"739","system":"gprdproduct"},{"code":"7961","system":"gprdproduct"},{"code":"9783","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antihypertensive-drugs-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antihypertensive-drugs-250mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antihypertensive-drugs-250mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antihypertensive-drugs-250mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
