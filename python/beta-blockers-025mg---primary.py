# Victor W Zhong, Juhaeri Juhaeri, Stephen R Cole, Christian M Shay, Carolyn A Chew-Graham, Penny Gordon-Larsen, Evangelos Kontopantelis, Elizabeth J Mayer-Davis, 2023.

import sys, csv, re

codes = [{"code":"1124","system":"gprdproduct"},{"code":"11338","system":"gprdproduct"},{"code":"12517","system":"gprdproduct"},{"code":"12651","system":"gprdproduct"},{"code":"13871","system":"gprdproduct"},{"code":"14030","system":"gprdproduct"},{"code":"16786","system":"gprdproduct"},{"code":"17615","system":"gprdproduct"},{"code":"1788","system":"gprdproduct"},{"code":"18743","system":"gprdproduct"},{"code":"19142","system":"gprdproduct"},{"code":"19172","system":"gprdproduct"},{"code":"19200","system":"gprdproduct"},{"code":"19437","system":"gprdproduct"},{"code":"197","system":"gprdproduct"},{"code":"20093","system":"gprdproduct"},{"code":"21182","system":"gprdproduct"},{"code":"23134","system":"gprdproduct"},{"code":"24083","system":"gprdproduct"},{"code":"2590","system":"gprdproduct"},{"code":"26","system":"gprdproduct"},{"code":"27946","system":"gprdproduct"},{"code":"29368","system":"gprdproduct"},{"code":"31536","system":"gprdproduct"},{"code":"32114","system":"gprdproduct"},{"code":"32552","system":"gprdproduct"},{"code":"33657","system":"gprdproduct"},{"code":"33659","system":"gprdproduct"},{"code":"34012","system":"gprdproduct"},{"code":"34492","system":"gprdproduct"},{"code":"34575","system":"gprdproduct"},{"code":"34585","system":"gprdproduct"},{"code":"34899","system":"gprdproduct"},{"code":"34963","system":"gprdproduct"},{"code":"34976","system":"gprdproduct"},{"code":"35695","system":"gprdproduct"},{"code":"3691","system":"gprdproduct"},{"code":"37118","system":"gprdproduct"},{"code":"37725","system":"gprdproduct"},{"code":"37837","system":"gprdproduct"},{"code":"40257","system":"gprdproduct"},{"code":"40289","system":"gprdproduct"},{"code":"40761","system":"gprdproduct"},{"code":"41572","system":"gprdproduct"},{"code":"43564","system":"gprdproduct"},{"code":"44808","system":"gprdproduct"},{"code":"44858","system":"gprdproduct"},{"code":"4588","system":"gprdproduct"},{"code":"46952","system":"gprdproduct"},{"code":"47041","system":"gprdproduct"},{"code":"472","system":"gprdproduct"},{"code":"47300","system":"gprdproduct"},{"code":"47870","system":"gprdproduct"},{"code":"4796","system":"gprdproduct"},{"code":"48745","system":"gprdproduct"},{"code":"49953","system":"gprdproduct"},{"code":"50224","system":"gprdproduct"},{"code":"50514","system":"gprdproduct"},{"code":"50702","system":"gprdproduct"},{"code":"51998","system":"gprdproduct"},{"code":"52310","system":"gprdproduct"},{"code":"52635","system":"gprdproduct"},{"code":"5284","system":"gprdproduct"},{"code":"53664","system":"gprdproduct"},{"code":"53802","system":"gprdproduct"},{"code":"53826","system":"gprdproduct"},{"code":"53916","system":"gprdproduct"},{"code":"54487","system":"gprdproduct"},{"code":"54542","system":"gprdproduct"},{"code":"55929","system":"gprdproduct"},{"code":"56459","system":"gprdproduct"},{"code":"56768","system":"gprdproduct"},{"code":"57023","system":"gprdproduct"},{"code":"5721","system":"gprdproduct"},{"code":"57578","system":"gprdproduct"},{"code":"57934","system":"gprdproduct"},{"code":"58498","system":"gprdproduct"},{"code":"58763","system":"gprdproduct"},{"code":"58974","system":"gprdproduct"},{"code":"59037","system":"gprdproduct"},{"code":"59148","system":"gprdproduct"},{"code":"594","system":"gprdproduct"},{"code":"59969","system":"gprdproduct"},{"code":"59982","system":"gprdproduct"},{"code":"60896","system":"gprdproduct"},{"code":"61340","system":"gprdproduct"},{"code":"7049","system":"gprdproduct"},{"code":"7429","system":"gprdproduct"},{"code":"751","system":"gprdproduct"},{"code":"7528","system":"gprdproduct"},{"code":"8369","system":"gprdproduct"},{"code":"9178","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('beta-blockers-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["beta-blockers-025mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["beta-blockers-025mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["beta-blockers-025mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
