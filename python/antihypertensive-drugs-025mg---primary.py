# Alison K Wright, Evangelos Kontopantelis, Richard Emsley, Iain Buchan, Naveed Sattar, Martin K Rutter, Darren M. Ashcroft, 2023.

import sys, csv, re

codes = [{"code":"10214","system":"gprdproduct"},{"code":"10323","system":"gprdproduct"},{"code":"1060","system":"gprdproduct"},{"code":"10882","system":"gprdproduct"},{"code":"10902","system":"gprdproduct"},{"code":"11133","system":"gprdproduct"},{"code":"11197","system":"gprdproduct"},{"code":"1124","system":"gprdproduct"},{"code":"11338","system":"gprdproduct"},{"code":"1143","system":"gprdproduct"},{"code":"1144","system":"gprdproduct"},{"code":"11487","system":"gprdproduct"},{"code":"11519","system":"gprdproduct"},{"code":"11641","system":"gprdproduct"},{"code":"11937","system":"gprdproduct"},{"code":"11987","system":"gprdproduct"},{"code":"12054","system":"gprdproduct"},{"code":"1211","system":"gprdproduct"},{"code":"12294","system":"gprdproduct"},{"code":"12412","system":"gprdproduct"},{"code":"12651","system":"gprdproduct"},{"code":"13026","system":"gprdproduct"},{"code":"13352","system":"gprdproduct"},{"code":"13394","system":"gprdproduct"},{"code":"1369","system":"gprdproduct"},{"code":"14030","system":"gprdproduct"},{"code":"14283","system":"gprdproduct"},{"code":"14387","system":"gprdproduct"},{"code":"14587","system":"gprdproduct"},{"code":"15127","system":"gprdproduct"},{"code":"15135","system":"gprdproduct"},{"code":"15457","system":"gprdproduct"},{"code":"16162","system":"gprdproduct"},{"code":"16196","system":"gprdproduct"},{"code":"16197","system":"gprdproduct"},{"code":"16786","system":"gprdproduct"},{"code":"17143","system":"gprdproduct"},{"code":"17615","system":"gprdproduct"},{"code":"17624","system":"gprdproduct"},{"code":"1788","system":"gprdproduct"},{"code":"18267","system":"gprdproduct"},{"code":"18733","system":"gprdproduct"},{"code":"18743","system":"gprdproduct"},{"code":"18973","system":"gprdproduct"},{"code":"19142","system":"gprdproduct"},{"code":"19172","system":"gprdproduct"},{"code":"19200","system":"gprdproduct"},{"code":"19204","system":"gprdproduct"},{"code":"196","system":"gprdproduct"},{"code":"19823","system":"gprdproduct"},{"code":"19890","system":"gprdproduct"},{"code":"2","system":"gprdproduct"},{"code":"2002","system":"gprdproduct"},{"code":"20057","system":"gprdproduct"},{"code":"20066","system":"gprdproduct"},{"code":"20188","system":"gprdproduct"},{"code":"20426","system":"gprdproduct"},{"code":"20431","system":"gprdproduct"},{"code":"21182","system":"gprdproduct"},{"code":"21872","system":"gprdproduct"},{"code":"21911","system":"gprdproduct"},{"code":"21938","system":"gprdproduct"},{"code":"22708","system":"gprdproduct"},{"code":"22912","system":"gprdproduct"},{"code":"22923","system":"gprdproduct"},{"code":"23134","system":"gprdproduct"},{"code":"23427","system":"gprdproduct"},{"code":"23456","system":"gprdproduct"},{"code":"2346","system":"gprdproduct"},{"code":"23642","system":"gprdproduct"},{"code":"24083","system":"gprdproduct"},{"code":"24632","system":"gprdproduct"},{"code":"26","system":"gprdproduct"},{"code":"2612","system":"gprdproduct"},{"code":"26219","system":"gprdproduct"},{"code":"26256","system":"gprdproduct"},{"code":"26275","system":"gprdproduct"},{"code":"269","system":"gprdproduct"},{"code":"27256","system":"gprdproduct"},{"code":"27689","system":"gprdproduct"},{"code":"277","system":"gprdproduct"},{"code":"27946","system":"gprdproduct"},{"code":"28127","system":"gprdproduct"},{"code":"28129","system":"gprdproduct"},{"code":"28721","system":"gprdproduct"},{"code":"29","system":"gprdproduct"},{"code":"29368","system":"gprdproduct"},{"code":"29529","system":"gprdproduct"},{"code":"29530","system":"gprdproduct"},{"code":"29991","system":"gprdproduct"},{"code":"30921","system":"gprdproduct"},{"code":"31150","system":"gprdproduct"},{"code":"31375","system":"gprdproduct"},{"code":"31529","system":"gprdproduct"},{"code":"31536","system":"gprdproduct"},{"code":"31670","system":"gprdproduct"},{"code":"31773","system":"gprdproduct"},{"code":"31820","system":"gprdproduct"},{"code":"32166","system":"gprdproduct"},{"code":"32595","system":"gprdproduct"},{"code":"32917","system":"gprdproduct"},{"code":"33083","system":"gprdproduct"},{"code":"33336","system":"gprdproduct"},{"code":"33651","system":"gprdproduct"},{"code":"33657","system":"gprdproduct"},{"code":"33658","system":"gprdproduct"},{"code":"33811","system":"gprdproduct"},{"code":"33837","system":"gprdproduct"},{"code":"34012","system":"gprdproduct"},{"code":"34059","system":"gprdproduct"},{"code":"34124","system":"gprdproduct"},{"code":"34296","system":"gprdproduct"},{"code":"34324","system":"gprdproduct"},{"code":"34347","system":"gprdproduct"},{"code":"34367","system":"gprdproduct"},{"code":"34382","system":"gprdproduct"},{"code":"34390","system":"gprdproduct"},{"code":"34400","system":"gprdproduct"},{"code":"34412","system":"gprdproduct"},{"code":"34431","system":"gprdproduct"},{"code":"34432","system":"gprdproduct"},{"code":"34490","system":"gprdproduct"},{"code":"34505","system":"gprdproduct"},{"code":"34522","system":"gprdproduct"},{"code":"34528","system":"gprdproduct"},{"code":"34539","system":"gprdproduct"},{"code":"34540","system":"gprdproduct"},{"code":"34562","system":"gprdproduct"},{"code":"34575","system":"gprdproduct"},{"code":"34585","system":"gprdproduct"},{"code":"34589","system":"gprdproduct"},{"code":"34602","system":"gprdproduct"},{"code":"34607","system":"gprdproduct"},{"code":"34613","system":"gprdproduct"},{"code":"34652","system":"gprdproduct"},{"code":"34732","system":"gprdproduct"},{"code":"34750","system":"gprdproduct"},{"code":"34803","system":"gprdproduct"},{"code":"34899","system":"gprdproduct"},{"code":"34908","system":"gprdproduct"},{"code":"34936","system":"gprdproduct"},{"code":"34963","system":"gprdproduct"},{"code":"34975","system":"gprdproduct"},{"code":"34976","system":"gprdproduct"},{"code":"35173","system":"gprdproduct"},{"code":"35174","system":"gprdproduct"},{"code":"35329","system":"gprdproduct"},{"code":"35343","system":"gprdproduct"},{"code":"35481","system":"gprdproduct"},{"code":"35794","system":"gprdproduct"},{"code":"36190","system":"gprdproduct"},{"code":"36780","system":"gprdproduct"},{"code":"3701","system":"gprdproduct"},{"code":"37080","system":"gprdproduct"},{"code":"37087","system":"gprdproduct"},{"code":"37118","system":"gprdproduct"},{"code":"3715","system":"gprdproduct"},{"code":"3720","system":"gprdproduct"},{"code":"37294","system":"gprdproduct"},{"code":"37655","system":"gprdproduct"},{"code":"37778","system":"gprdproduct"},{"code":"37837","system":"gprdproduct"},{"code":"37908","system":"gprdproduct"},{"code":"37930","system":"gprdproduct"},{"code":"37964","system":"gprdproduct"},{"code":"37965","system":"gprdproduct"},{"code":"37978","system":"gprdproduct"},{"code":"38034","system":"gprdproduct"},{"code":"38308","system":"gprdproduct"},{"code":"38459","system":"gprdproduct"},{"code":"38889","system":"gprdproduct"},{"code":"3923","system":"gprdproduct"},{"code":"3924","system":"gprdproduct"},{"code":"39357","system":"gprdproduct"},{"code":"39421","system":"gprdproduct"},{"code":"39512","system":"gprdproduct"},{"code":"39807","system":"gprdproduct"},{"code":"39914","system":"gprdproduct"},{"code":"40149","system":"gprdproduct"},{"code":"4034","system":"gprdproduct"},{"code":"40639","system":"gprdproduct"},{"code":"40711","system":"gprdproduct"},{"code":"40761","system":"gprdproduct"},{"code":"40886","system":"gprdproduct"},{"code":"40898","system":"gprdproduct"},{"code":"40907","system":"gprdproduct"},{"code":"41074","system":"gprdproduct"},{"code":"41205","system":"gprdproduct"},{"code":"41417","system":"gprdproduct"},{"code":"41517","system":"gprdproduct"},{"code":"41532","system":"gprdproduct"},{"code":"41538","system":"gprdproduct"},{"code":"41556","system":"gprdproduct"},{"code":"41572","system":"gprdproduct"},{"code":"41617","system":"gprdproduct"},{"code":"41630","system":"gprdproduct"},{"code":"41694","system":"gprdproduct"},{"code":"41719","system":"gprdproduct"},{"code":"42901","system":"gprdproduct"},{"code":"42906","system":"gprdproduct"},{"code":"42908","system":"gprdproduct"},{"code":"4332","system":"gprdproduct"},{"code":"43411","system":"gprdproduct"},{"code":"43412","system":"gprdproduct"},{"code":"43418","system":"gprdproduct"},{"code":"43470","system":"gprdproduct"},{"code":"43508","system":"gprdproduct"},{"code":"43516","system":"gprdproduct"},{"code":"43563","system":"gprdproduct"},{"code":"43566","system":"gprdproduct"},{"code":"43649","system":"gprdproduct"},{"code":"43880","system":"gprdproduct"},{"code":"44000","system":"gprdproduct"},{"code":"44527","system":"gprdproduct"},{"code":"448","system":"gprdproduct"},{"code":"44808","system":"gprdproduct"},{"code":"44858","system":"gprdproduct"},{"code":"44859","system":"gprdproduct"},{"code":"45078","system":"gprdproduct"},{"code":"45217","system":"gprdproduct"},{"code":"45279","system":"gprdproduct"},{"code":"45337","system":"gprdproduct"},{"code":"45554","system":"gprdproduct"},{"code":"45816","system":"gprdproduct"},{"code":"46525","system":"gprdproduct"},{"code":"46724","system":"gprdproduct"},{"code":"46792","system":"gprdproduct"},{"code":"46851","system":"gprdproduct"},{"code":"46890","system":"gprdproduct"},{"code":"46916","system":"gprdproduct"},{"code":"46930","system":"gprdproduct"},{"code":"46952","system":"gprdproduct"},{"code":"46975","system":"gprdproduct"},{"code":"47018","system":"gprdproduct"},{"code":"47021","system":"gprdproduct"},{"code":"47107","system":"gprdproduct"},{"code":"472","system":"gprdproduct"},{"code":"47300","system":"gprdproduct"},{"code":"47467","system":"gprdproduct"},{"code":"47573","system":"gprdproduct"},{"code":"47687","system":"gprdproduct"},{"code":"47727","system":"gprdproduct"},{"code":"47844","system":"gprdproduct"},{"code":"47870","system":"gprdproduct"},{"code":"47998","system":"gprdproduct"},{"code":"48008","system":"gprdproduct"},{"code":"48053","system":"gprdproduct"},{"code":"48079","system":"gprdproduct"},{"code":"48099","system":"gprdproduct"},{"code":"48398","system":"gprdproduct"},{"code":"4873","system":"gprdproduct"},{"code":"49492","system":"gprdproduct"},{"code":"49529","system":"gprdproduct"},{"code":"49752","system":"gprdproduct"},{"code":"49863","system":"gprdproduct"},{"code":"49953","system":"gprdproduct"},{"code":"50347","system":"gprdproduct"},{"code":"50370","system":"gprdproduct"},{"code":"50514","system":"gprdproduct"},{"code":"50702","system":"gprdproduct"},{"code":"50863","system":"gprdproduct"},{"code":"50971","system":"gprdproduct"},{"code":"51186","system":"gprdproduct"},{"code":"51258","system":"gprdproduct"},{"code":"51643","system":"gprdproduct"},{"code":"51652","system":"gprdproduct"},{"code":"51701","system":"gprdproduct"},{"code":"51714","system":"gprdproduct"},{"code":"51720","system":"gprdproduct"},{"code":"51807","system":"gprdproduct"},{"code":"51983","system":"gprdproduct"},{"code":"51998","system":"gprdproduct"},{"code":"520","system":"gprdproduct"},{"code":"52088","system":"gprdproduct"},{"code":"52145","system":"gprdproduct"},{"code":"52197","system":"gprdproduct"},{"code":"52310","system":"gprdproduct"},{"code":"52366","system":"gprdproduct"},{"code":"52499","system":"gprdproduct"},{"code":"52635","system":"gprdproduct"},{"code":"52686","system":"gprdproduct"},{"code":"5275","system":"gprdproduct"},{"code":"5284","system":"gprdproduct"},{"code":"52882","system":"gprdproduct"},{"code":"53220","system":"gprdproduct"},{"code":"5337","system":"gprdproduct"},{"code":"53621","system":"gprdproduct"},{"code":"53664","system":"gprdproduct"},{"code":"53674","system":"gprdproduct"},{"code":"53802","system":"gprdproduct"},{"code":"53820","system":"gprdproduct"},{"code":"53826","system":"gprdproduct"},{"code":"53868","system":"gprdproduct"},{"code":"53915","system":"gprdproduct"},{"code":"53990","system":"gprdproduct"},{"code":"542","system":"gprdproduct"},{"code":"54283","system":"gprdproduct"},{"code":"54298","system":"gprdproduct"},{"code":"54316","system":"gprdproduct"},{"code":"54329","system":"gprdproduct"},{"code":"54341","system":"gprdproduct"},{"code":"54487","system":"gprdproduct"},{"code":"54542","system":"gprdproduct"},{"code":"54544","system":"gprdproduct"},{"code":"54620","system":"gprdproduct"},{"code":"54633","system":"gprdproduct"},{"code":"54740","system":"gprdproduct"},{"code":"54941","system":"gprdproduct"},{"code":"54983","system":"gprdproduct"},{"code":"55259","system":"gprdproduct"},{"code":"55358","system":"gprdproduct"},{"code":"55456","system":"gprdproduct"},{"code":"55718","system":"gprdproduct"},{"code":"55740","system":"gprdproduct"},{"code":"55777","system":"gprdproduct"},{"code":"55798","system":"gprdproduct"},{"code":"55826","system":"gprdproduct"},{"code":"55896","system":"gprdproduct"},{"code":"55929","system":"gprdproduct"},{"code":"55979","system":"gprdproduct"},{"code":"56","system":"gprdproduct"},{"code":"56013","system":"gprdproduct"},{"code":"56129","system":"gprdproduct"},{"code":"56279","system":"gprdproduct"},{"code":"56296","system":"gprdproduct"},{"code":"56445","system":"gprdproduct"},{"code":"56459","system":"gprdproduct"},{"code":"56505","system":"gprdproduct"},{"code":"56760","system":"gprdproduct"},{"code":"56768","system":"gprdproduct"},{"code":"56804","system":"gprdproduct"},{"code":"57023","system":"gprdproduct"},{"code":"5721","system":"gprdproduct"},{"code":"5735","system":"gprdproduct"},{"code":"57578","system":"gprdproduct"},{"code":"57588","system":"gprdproduct"},{"code":"57864","system":"gprdproduct"},{"code":"57882","system":"gprdproduct"},{"code":"57934","system":"gprdproduct"},{"code":"58","system":"gprdproduct"},{"code":"58225","system":"gprdproduct"},{"code":"58258","system":"gprdproduct"},{"code":"58274","system":"gprdproduct"},{"code":"58294","system":"gprdproduct"},{"code":"58339","system":"gprdproduct"},{"code":"58451","system":"gprdproduct"},{"code":"58461","system":"gprdproduct"},{"code":"58498","system":"gprdproduct"},{"code":"58649","system":"gprdproduct"},{"code":"58682","system":"gprdproduct"},{"code":"58763","system":"gprdproduct"},{"code":"58974","system":"gprdproduct"},{"code":"59037","system":"gprdproduct"},{"code":"59086","system":"gprdproduct"},{"code":"59109","system":"gprdproduct"},{"code":"59148","system":"gprdproduct"},{"code":"59271","system":"gprdproduct"},{"code":"594","system":"gprdproduct"},{"code":"59557","system":"gprdproduct"},{"code":"59603","system":"gprdproduct"},{"code":"59699","system":"gprdproduct"},{"code":"59915","system":"gprdproduct"},{"code":"59969","system":"gprdproduct"},{"code":"59982","system":"gprdproduct"},{"code":"60067","system":"gprdproduct"},{"code":"60097","system":"gprdproduct"},{"code":"60143","system":"gprdproduct"},{"code":"60149","system":"gprdproduct"},{"code":"60232","system":"gprdproduct"},{"code":"60309","system":"gprdproduct"},{"code":"60343","system":"gprdproduct"},{"code":"60465","system":"gprdproduct"},{"code":"60569","system":"gprdproduct"},{"code":"6066","system":"gprdproduct"},{"code":"60730","system":"gprdproduct"},{"code":"60744","system":"gprdproduct"},{"code":"60884","system":"gprdproduct"},{"code":"60896","system":"gprdproduct"},{"code":"61067","system":"gprdproduct"},{"code":"61115","system":"gprdproduct"},{"code":"61340","system":"gprdproduct"},{"code":"61422","system":"gprdproduct"},{"code":"61495","system":"gprdproduct"},{"code":"61499","system":"gprdproduct"},{"code":"61573","system":"gprdproduct"},{"code":"61694","system":"gprdproduct"},{"code":"61754","system":"gprdproduct"},{"code":"6200","system":"gprdproduct"},{"code":"62024","system":"gprdproduct"},{"code":"62036","system":"gprdproduct"},{"code":"62325","system":"gprdproduct"},{"code":"62537","system":"gprdproduct"},{"code":"62860","system":"gprdproduct"},{"code":"6288","system":"gprdproduct"},{"code":"62918","system":"gprdproduct"},{"code":"62958","system":"gprdproduct"},{"code":"6314","system":"gprdproduct"},{"code":"63222","system":"gprdproduct"},{"code":"63442","system":"gprdproduct"},{"code":"63493","system":"gprdproduct"},{"code":"63535","system":"gprdproduct"},{"code":"6362","system":"gprdproduct"},{"code":"6364","system":"gprdproduct"},{"code":"63850","system":"gprdproduct"},{"code":"63918","system":"gprdproduct"},{"code":"64055","system":"gprdproduct"},{"code":"64066","system":"gprdproduct"},{"code":"64160","system":"gprdproduct"},{"code":"64166","system":"gprdproduct"},{"code":"64327","system":"gprdproduct"},{"code":"64418","system":"gprdproduct"},{"code":"64441","system":"gprdproduct"},{"code":"64447","system":"gprdproduct"},{"code":"64474","system":"gprdproduct"},{"code":"64606","system":"gprdproduct"},{"code":"64703","system":"gprdproduct"},{"code":"64719","system":"gprdproduct"},{"code":"64739","system":"gprdproduct"},{"code":"64784","system":"gprdproduct"},{"code":"64850","system":"gprdproduct"},{"code":"64877","system":"gprdproduct"},{"code":"64902","system":"gprdproduct"},{"code":"64907","system":"gprdproduct"},{"code":"654","system":"gprdproduct"},{"code":"65416","system":"gprdproduct"},{"code":"65442","system":"gprdproduct"},{"code":"65536","system":"gprdproduct"},{"code":"65599","system":"gprdproduct"},{"code":"65745","system":"gprdproduct"},{"code":"65749","system":"gprdproduct"},{"code":"65936","system":"gprdproduct"},{"code":"65983","system":"gprdproduct"},{"code":"65985","system":"gprdproduct"},{"code":"66095","system":"gprdproduct"},{"code":"66430","system":"gprdproduct"},{"code":"66558","system":"gprdproduct"},{"code":"66574","system":"gprdproduct"},{"code":"66772","system":"gprdproduct"},{"code":"66910","system":"gprdproduct"},{"code":"6765","system":"gprdproduct"},{"code":"6807","system":"gprdproduct"},{"code":"692","system":"gprdproduct"},{"code":"7049","system":"gprdproduct"},{"code":"709","system":"gprdproduct"},{"code":"729","system":"gprdproduct"},{"code":"7351","system":"gprdproduct"},{"code":"749","system":"gprdproduct"},{"code":"751","system":"gprdproduct"},{"code":"7553","system":"gprdproduct"},{"code":"78","system":"gprdproduct"},{"code":"7806","system":"gprdproduct"},{"code":"80","system":"gprdproduct"},{"code":"8052","system":"gprdproduct"},{"code":"8106","system":"gprdproduct"},{"code":"8198","system":"gprdproduct"},{"code":"8257","system":"gprdproduct"},{"code":"8310","system":"gprdproduct"},{"code":"8521","system":"gprdproduct"},{"code":"8602","system":"gprdproduct"},{"code":"8800","system":"gprdproduct"},{"code":"8897","system":"gprdproduct"},{"code":"9143","system":"gprdproduct"},{"code":"9178","system":"gprdproduct"},{"code":"9223","system":"gprdproduct"},{"code":"923","system":"gprdproduct"},{"code":"924","system":"gprdproduct"},{"code":"9431","system":"gprdproduct"},{"code":"9456","system":"gprdproduct"},{"code":"9935","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antihypertensive-drugs-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antihypertensive-drugs-025mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antihypertensive-drugs-025mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antihypertensive-drugs-025mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)