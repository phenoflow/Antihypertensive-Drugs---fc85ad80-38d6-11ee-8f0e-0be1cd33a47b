cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  inderal-antihypertensive-drugs---primary:
    run: inderal-antihypertensive-drugs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  antihypertensive-drugs-torem---primary:
    run: antihypertensive-drugs-torem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: inderal-antihypertensive-drugs---primary/output
  antihypertensive-drugs-doxadura---primary:
    run: antihypertensive-drugs-doxadura---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-torem---primary/output
  antihypertensive-drugs-slowrelease---primary:
    run: antihypertensive-drugs-slowrelease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-doxadura---primary/output
  antihypertensive-drugs-320mg---primary:
    run: antihypertensive-drugs-320mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-slowrelease---primary/output
  antihypertensive-drugs-atenixco---primary:
    run: antihypertensive-drugs-atenixco---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-320mg---primary/output
  antihypertensive-drugs-tablet---primary:
    run: antihypertensive-drugs-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-atenixco---primary/output
  antihypertensive-drugs-025mg---primary:
    run: antihypertensive-drugs-025mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-tablet---primary/output
  antihypertensive-drugs-360mg---primary:
    run: antihypertensive-drugs-360mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-025mg---primary/output
  antihypertensive-drugs-adizemsr---primary:
    run: antihypertensive-drugs-adizemsr---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-360mg---primary/output
  antihypertensive-drugs-aprovel---primary:
    run: antihypertensive-drugs-aprovel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-adizemsr---primary/output
  antihypertensive-drugs-lasix---primary:
    run: antihypertensive-drugs-lasix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-aprovel---primary/output
  antihypertensive-drugs-250mg---primary:
    run: antihypertensive-drugs-250mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-lasix---primary/output
  antihypertensive-drugs-bayer---primary:
    run: antihypertensive-drugs-bayer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-250mg---primary/output
  antihypertensive-drugs-cobetaloc---primary:
    run: antihypertensive-drugs-cobetaloc---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-bayer---primary/output
  antihypertensive-drugs-corgard---primary:
    run: antihypertensive-drugs-corgard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-cobetaloc---primary/output
  antihypertensive-drugs-trasicor---primary:
    run: antihypertensive-drugs-trasicor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-corgard---primary/output
  antihypertensive-drugs-hoechst---primary:
    run: antihypertensive-drugs-hoechst---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-trasicor---primary/output
  antihypertensive-drugs-emcor---primary:
    run: antihypertensive-drugs-emcor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-hoechst---primary/output
  antihypertensive-drugs-berkozide---primary:
    run: antihypertensive-drugs-berkozide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-emcor---primary/output
  antihypertensive-drugs-3125mg---primary:
    run: antihypertensive-drugs-3125mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-berkozide---primary/output
  antihypertensive-drugs-angitil---primary:
    run: antihypertensive-drugs-angitil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-3125mg---primary/output
  antihypertensive-drugs-navidrex---primary:
    run: antihypertensive-drugs-navidrex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-angitil---primary/output
  antihypertensive-drugs-codiovan---primary:
    run: antihypertensive-drugs-codiovan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-navidrex---primary/output
  antihypertensive-drugs-viazem---primary:
    run: antihypertensive-drugs-viazem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-codiovan---primary/output
  antihypertensive-drugs-cozidocapt---primary:
    run: antihypertensive-drugs-cozidocapt---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-viazem---primary/output
  antihypertensive-drugs-coflumactone---primary:
    run: antihypertensive-drugs-coflumactone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-cozidocapt---primary/output
  antihypertensive-drugs-baratol---primary:
    run: antihypertensive-drugs-baratol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-coflumactone---primary/output
  antihypertensive-drugs-300mg---primary:
    run: antihypertensive-drugs-300mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-baratol---primary/output
  antihypertensive-drugs-cyclopenthiazide---primary:
    run: antihypertensive-drugs-cyclopenthiazide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-300mg---primary/output
  antihypertensive-drugs-doxazosin---primary:
    run: antihypertensive-drugs-doxazosin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-cyclopenthiazide---primary/output
  antihypertensive-drugs-motens---primary:
    run: antihypertensive-drugs-motens---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-doxazosin---primary/output
  antihypertensive-drugs-erbumine---primary:
    run: antihypertensive-drugs-erbumine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-motens---primary/output
  antihypertensive-drugs-betim---primary:
    run: antihypertensive-drugs-betim---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-erbumine---primary/output
  antihypertensive-drugs-neonaclex---primary:
    run: antihypertensive-drugs-neonaclex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-betim---primary/output
  antihypertensive-drugs-burinex---primary:
    run: antihypertensive-drugs-burinex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-neonaclex---primary/output
  sectral-antihypertensive-drugs---primary:
    run: sectral-antihypertensive-drugs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-burinex---primary/output
  antihypertensive-drugs-pfizer---primary:
    run: antihypertensive-drugs-pfizer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: sectral-antihypertensive-drugs---primary/output
  antihypertensive-drugs-capsule---primary:
    run: antihypertensive-drugs-capsule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-pfizer---primary/output
  antihypertensive-drugs-250microgram---primary:
    run: antihypertensive-drugs-250microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-capsule---primary/output
  hydrosaluric-antihypertensive-drugs---primary:
    run: hydrosaluric-antihypertensive-drugs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-250microgram---primary/output
  moduretic-antihypertensive-drugs---primary:
    run: moduretic-antihypertensive-drugs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: hydrosaluric-antihypertensive-drugs---primary/output
  antihypertensive-drugs-starter---primary:
    run: antihypertensive-drugs-starter---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: moduretic-antihypertensive-drugs---primary/output
  antihypertensive-drugs-kalspare---primary:
    run: antihypertensive-drugs-kalspare---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-starter---primary/output
  antihypertensive-drugs-cilazapril---primary:
    run: antihypertensive-drugs-cilazapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-kalspare---primary/output
  antihypertensive-drugs-tanatril---primary:
    run: antihypertensive-drugs-tanatril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-cilazapril---primary/output
  antihypertensive-drugs-600mg---primary:
    run: antihypertensive-drugs-600mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-tanatril---primary/output
  antihypertensive-drugs-imidapril---primary:
    run: antihypertensive-drugs-imidapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-600mg---primary/output
  antihypertensive-drugs-telmisartan---primary:
    run: antihypertensive-drugs-telmisartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-imidapril---primary/output
  antihypertensive-drugs-astella---primary:
    run: antihypertensive-drugs-astella---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-telmisartan---primary/output
  antihypertensive-drugs-retard---primary:
    run: antihypertensive-drugs-retard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-astella---primary/output
  antihypertensive-drugs-bisoprolol---primary:
    run: antihypertensive-drugs-bisoprolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-retard---primary/output
  antihypertensive-drugs-hypovase---primary:
    run: antihypertensive-drugs-hypovase---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-bisoprolol---primary/output
  antihypertensive-drugs-150mg---primary:
    run: antihypertensive-drugs-150mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-hypovase---primary/output
  antihypertensive-drugs-sugar---primary:
    run: antihypertensive-drugs-sugar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-150mg---primary/output
  antihypertensive-drugs-400mg---primary:
    run: antihypertensive-drugs-400mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-sugar---primary/output
  antihypertensive-drugs-aldactide---primary:
    run: antihypertensive-drugs-aldactide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-400mg---primary/output
  antihypertensive-drugs-enalapril---primary:
    run: antihypertensive-drugs-enalapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-aldactide---primary/output
  antihypertensive-drugs-dilzem---primary:
    run: antihypertensive-drugs-dilzem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-enalapril---primary/output
  antihypertensive-drugs-eprosartan---primary:
    run: antihypertensive-drugs-eprosartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-dilzem---primary/output
  antihypertensive-drugs-adipine---primary:
    run: antihypertensive-drugs-adipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-eprosartan---primary/output
  antihypertensive-drugs-spironolactone---primary:
    run: antihypertensive-drugs-spironolactone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-adipine---primary/output
  antihypertensive-drugs-oxprenolol---primary:
    run: antihypertensive-drugs-oxprenolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-spironolactone---primary/output
  antihypertensive-drugs-esidrex---primary:
    run: antihypertensive-drugs-esidrex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-oxprenolol---primary/output
  antihypertensive-drugs-forte---primary:
    run: antihypertensive-drugs-forte---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-esidrex---primary/output
  antihypertensive-drugs-lopresor---primary:
    run: antihypertensive-drugs-lopresor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-forte---primary/output
  antihypertensive-drugs-alphavase---primary:
    run: antihypertensive-drugs-alphavase---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-lopresor---primary/output
  antihypertensive-drugs-angiopine---primary:
    run: antihypertensive-drugs-angiopine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-alphavase---primary/output
  antihypertensive-drugs-wafer---primary:
    run: antihypertensive-drugs-wafer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-angiopine---primary/output
  antihypertensive-drugs-micardi---primary:
    run: antihypertensive-drugs-micardi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-wafer---primary/output
  antihypertensive-drugs-clopamide---primary:
    run: antihypertensive-drugs-clopamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-micardi---primary/output
  eucardic-antihypertensive-drugs---primary:
    run: eucardic-antihypertensive-drugs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-clopamide---primary/output
  antihypertensive-drugs-acebutolol---primary:
    run: antihypertensive-drugs-acebutolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: eucardic-antihypertensive-drugs---primary/output
  servier-antihypertensive-drugs---primary:
    run: servier-antihypertensive-drugs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-acebutolol---primary/output
  corgaretic-antihypertensive-drugs---primary:
    run: corgaretic-antihypertensive-drugs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: servier-antihypertensive-drugs---primary/output
  antihypertensive-drugs-accupro---primary:
    run: antihypertensive-drugs-accupro---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: corgaretic-antihypertensive-drugs---primary/output
  antihypertensive-drugs-pindolol---primary:
    run: antihypertensive-drugs-pindolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-accupro---primary/output
  antihypertensive-drugs-frusol---primary:
    run: antihypertensive-drugs-frusol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-pindolol---primary/output
  antihypertensive-drugs-calchan---primary:
    run: antihypertensive-drugs-calchan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-frusol---primary/output
  antihypertensive-drugs-cozaarcomp---primary:
    run: antihypertensive-drugs-cozaarcomp---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-calchan---primary/output
  antihypertensive-drugs-olmetec---primary:
    run: antihypertensive-drugs-olmetec---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-cozaarcomp---primary/output
  antihypertensive-drugs-spiroctan---primary:
    run: antihypertensive-drugs-spiroctan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-olmetec---primary/output
  antihypertensive-drugs-titration---primary:
    run: antihypertensive-drugs-titration---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-spiroctan---primary/output
  antihypertensive-drugs-quinapril---primary:
    run: antihypertensive-drugs-quinapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-titration---primary/output
  antihypertensive-drugs-moexipril---primary:
    run: antihypertensive-drugs-moexipril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-quinapril---primary/output
  antihypertensive-drugs-totamol---primary:
    run: antihypertensive-drugs-totamol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-moexipril---primary/output
  antihypertensive-drugs-capozide---primary:
    run: antihypertensive-drugs-capozide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-totamol---primary/output
  antihypertensive-drugs-felogen---primary:
    run: antihypertensive-drugs-felogen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-capozide---primary/output
  antihypertensive-drugs-posicor---primary:
    run: antihypertensive-drugs-posicor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-felogen---primary/output
  antihypertensive-drugs-chlortalidone---primary:
    run: antihypertensive-drugs-chlortalidone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-posicor---primary/output
  antihypertensive-drugs-monmouth---primary:
    run: antihypertensive-drugs-monmouth---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-chlortalidone---primary/output
  antihypertensive-drugs-mibefradil---primary:
    run: antihypertensive-drugs-mibefradil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-monmouth---primary/output
  antihypertensive-drugs-captopril---primary:
    run: antihypertensive-drugs-captopril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-mibefradil---primary/output
  antihypertensive-drugs-labetalol---primary:
    run: antihypertensive-drugs-labetalol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-captopril---primary/output
  antihypertensive-drugs-hytrin---primary:
    run: antihypertensive-drugs-hytrin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-labetalol---primary/output
  antihypertensive-drugs-vascace---primary:
    run: antihypertensive-drugs-vascace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-hytrin---primary/output
  antihypertensive-drugs-teveten---primary:
    run: antihypertensive-drugs-teveten---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule98
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-vascace---primary/output
  antihypertensive-drugs-labrocol---primary:
    run: antihypertensive-drugs-labrocol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule99
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-teveten---primary/output
  antihypertensive-drugs-carace---primary:
    run: antihypertensive-drugs-carace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule100
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-labrocol---primary/output
  antihypertensive-drugs-gopten---primary:
    run: antihypertensive-drugs-gopten---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule101
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-carace---primary/output
  antihypertensive-drugs-pantheon---primary:
    run: antihypertensive-drugs-pantheon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule102
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-gopten---primary/output
  antihypertensive-drugs-triapin---primary:
    run: antihypertensive-drugs-triapin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule103
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-pantheon---primary/output
  antihypertensive-drugs-ratiopharm---primary:
    run: antihypertensive-drugs-ratiopharm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule104
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-triapin---primary/output
  antihypertensive-drugs-mercury---primary:
    run: antihypertensive-drugs-mercury---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule105
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-ratiopharm---primary/output
  antihypertensive-drugs-cardilate---primary:
    run: antihypertensive-drugs-cardilate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule106
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-mercury---primary/output
  antihypertensive-drugs-nivaten---primary:
    run: antihypertensive-drugs-nivaten---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule107
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-cardilate---primary/output
  antihypertensive-drugs-zemtard---primary:
    run: antihypertensive-drugs-zemtard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule108
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-nivaten---primary/output
  antihypertensive-drugs-625mg---primary:
    run: antihypertensive-drugs-625mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule109
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-zemtard---primary/output
  antihypertensive-drugs-felotens---primary:
    run: antihypertensive-drugs-felotens---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule110
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-625mg---primary/output
  antihypertensive-drugs-slozem---primary:
    run: antihypertensive-drugs-slozem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule111
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-felotens---primary/output
  antihypertensive-drugs-liquid---primary:
    run: antihypertensive-drugs-liquid---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule112
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-slozem---primary/output
  antihypertensive-drugs-amlostin---primary:
    run: antihypertensive-drugs-amlostin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule113
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-liquid---primary/output
  antihypertensive-drugs-pharmacia---primary:
    run: antihypertensive-drugs-pharmacia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule114
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-amlostin---primary/output
  antihypertensive-drugs-torasemide---primary:
    run: antihypertensive-drugs-torasemide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule115
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-pharmacia---primary/output
  antihypertensive-drugs-375mg---primary:
    run: antihypertensive-drugs-375mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule116
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-torasemide---primary/output
  antihypertensive-drugs-squibb---primary:
    run: antihypertensive-drugs-squibb---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule117
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-375mg---primary/output
  antihypertensive-drugs-acepril---primary:
    run: antihypertensive-drugs-acepril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule118
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-squibb---primary/output
  antihypertensive-drugs-ashbourne---primary:
    run: antihypertensive-drugs-ashbourne---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule119
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-acepril---primary/output
  antihypertensive-drugs-180mg---primary:
    run: antihypertensive-drugs-180mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule120
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-ashbourne---primary/output
  antihypertensive-drugs-betaadalat---primary:
    run: antihypertensive-drugs-betaadalat---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule121
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-180mg---primary/output
  antihypertensive-drugs-disogram---primary:
    run: antihypertensive-drugs-disogram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule122
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-betaadalat---primary/output
  antihypertensive-drugs-120mg---primary:
    run: antihypertensive-drugs-120mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule123
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-disogram---primary/output
  antihypertensive-drugs-tensipine---primary:
    run: antihypertensive-drugs-tensipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule124
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-120mg---primary/output
  antihypertensive-drugs-ranbaxy---primary:
    run: antihypertensive-drugs-ranbaxy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule125
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-tensipine---primary/output
  antihypertensive-drugs-atenolol---primary:
    run: antihypertensive-drugs-atenolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule126
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-ranbaxy---primary/output
  antihypertensive-drugs-neobendromax---primary:
    run: antihypertensive-drugs-neobendromax---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule127
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-atenolol---primary/output
  antihypertensive-drugs-100mg---primary:
    run: antihypertensive-drugs-100mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule128
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-neobendromax---primary/output
  antihypertensive-drugs-cardicor---primary:
    run: antihypertensive-drugs-cardicor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule129
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-100mg---primary/output
  antihypertensive-drugs-visken---primary:
    run: antihypertensive-drugs-visken---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule130
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-cardicor---primary/output
  antihypertensive-drugs-recordati---primary:
    run: antihypertensive-drugs-recordati---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule131
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-visken---primary/output
  antihypertensive-drugs-abbott---primary:
    run: antihypertensive-drugs-abbott---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule132
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-recordati---primary/output
  antihypertensive-drugs-atenamin---primary:
    run: antihypertensive-drugs-atenamin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule133
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-abbott---primary/output
  antihypertensive-drugs-tensopril---primary:
    run: antihypertensive-drugs-tensopril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule134
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-atenamin---primary/output
  antihypertensive-drugs-helio---primary:
    run: antihypertensive-drugs-helio---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule135
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-tensopril---primary/output
  antihypertensive-drugs-bipranix---primary:
    run: antihypertensive-drugs-bipranix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule136
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-helio---primary/output
  antihypertensive-drugs-kaplon---primary:
    run: antihypertensive-drugs-kaplon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule137
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-bipranix---primary/output
  antihypertensive-drugs-calanif---primary:
    run: antihypertensive-drugs-calanif---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule138
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-kaplon---primary/output
  eastern-antihypertensive-drugs---primary:
    run: eastern-antihypertensive-drugs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule139
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-calanif---primary/output
  antihypertensive-drugs-nimodrel---primary:
    run: antihypertensive-drugs-nimodrel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule140
      potentialCases:
        id: potentialCases
        source: eastern-antihypertensive-drugs---primary/output
  antihypertensive-drugs-bicarzem---primary:
    run: antihypertensive-drugs-bicarzem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule141
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-nimodrel---primary/output
  pralenal-antihypertensive-drugs---primary:
    run: pralenal-antihypertensive-drugs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule142
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-bicarzem---primary/output
  antihypertensive-drugs-hyperplasia---primary:
    run: antihypertensive-drugs-hyperplasia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule143
      potentialCases:
        id: potentialCases
        source: pralenal-antihypertensive-drugs---primary/output
  antihypertensive-drugs-aldactone---primary:
    run: antihypertensive-drugs-aldactone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule144
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-hyperplasia---primary/output
  antihypertensive-drugs-shire---primary:
    run: antihypertensive-drugs-shire---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule145
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-aldactone---primary/output
  totaretic-antihypertensive-drugs---primary:
    run: totaretic-antihypertensive-drugs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule146
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-shire---primary/output
  antihypertensive-drugs-tenormin---primary:
    run: antihypertensive-drugs-tenormin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule147
      potentialCases:
        id: potentialCases
        source: totaretic-antihypertensive-drugs---primary/output
  antihypertensive-drugs-cardioplen---primary:
    run: antihypertensive-drugs-cardioplen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule148
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-tenormin---primary/output
  antihypertensive-drugs-dumex---primary:
    run: antihypertensive-drugs-dumex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule149
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-cardioplen---primary/output
  antihypertensive-drugs-bumetanide---primary:
    run: antihypertensive-drugs-bumetanide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule150
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-dumex---primary/output
  antihypertensive-drugs-nadolol---primary:
    run: antihypertensive-drugs-nadolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule151
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-bumetanide---primary/output
  antihypertensive-drugs-500mg---primary:
    run: antihypertensive-drugs-500mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule152
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-nadolol---primary/output
  antihypertensive-drugs-rapranol---primary:
    run: antihypertensive-drugs-rapranol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule153
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-500mg---primary/output
  antihypertensive-drugs-prestim---primary:
    run: antihypertensive-drugs-prestim---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule154
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-rapranol---primary/output
  antihypertensive-drugs-cascor---primary:
    run: antihypertensive-drugs-cascor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule155
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-prestim---primary/output
  antihypertensive-drugs-spiroco---primary:
    run: antihypertensive-drugs-spiroco---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule156
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-cascor---primary/output
  antihypertensive-drugs-maleate---primary:
    run: antihypertensive-drugs-maleate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule157
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-spiroco---primary/output
  antihypertensive-drugs-betaprograne---primary:
    run: antihypertensive-drugs-betaprograne---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule158
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-maleate---primary/output
  antihypertensive-drugs-tenchlor---primary:
    run: antihypertensive-drugs-tenchlor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule159
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-betaprograne---primary/output
  antihypertensive-drugs-propranolol---primary:
    run: antihypertensive-drugs-propranolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule160
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-tenchlor---primary/output
  antihypertensive-drugs-lagap---primary:
    run: antihypertensive-drugs-lagap---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule161
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-propranolol---primary/output
  antihypertensive-drugs-cabren---primary:
    run: antihypertensive-drugs-cabren---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule162
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-lagap---primary/output
  antihypertensive-drugs-zemret---primary:
    run: antihypertensive-drugs-zemret---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule163
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-cabren---primary/output
  antihypertensive-drugs-furosemide---primary:
    run: antihypertensive-drugs-furosemide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule164
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-zemret---primary/output
  antihypertensive-drugs-chanelle---primary:
    run: antihypertensive-drugs-chanelle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule165
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-furosemide---primary/output
  antihypertensive-drugs-nifedipine---primary:
    run: antihypertensive-drugs-nifedipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule166
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-chanelle---primary/output
  antihypertensive-drugs-elanpharma---primary:
    run: antihypertensive-drugs-elanpharma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule167
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-nifedipine---primary/output
  antihypertensive-drugs-diltiazem---primary:
    run: antihypertensive-drugs-diltiazem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule168
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-elanpharma---primary/output
  antihypertensive-drugs-kenzem---primary:
    run: antihypertensive-drugs-kenzem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule169
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-diltiazem---primary/output
  antihypertensive-drugs-pliva---primary:
    run: antihypertensive-drugs-pliva---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule170
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-kenzem---primary/output
  antihypertensive-drugs-metoro---primary:
    run: antihypertensive-drugs-metoro---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule171
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-pliva---primary/output
  antihypertensive-drugs-trinity---primary:
    run: antihypertensive-drugs-trinity---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule172
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-metoro---primary/output
  antihypertensive-drugs-chlorothiazide---primary:
    run: antihypertensive-drugs-chlorothiazide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule173
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-trinity---primary/output
  antihypertensive-drugs-lopace---primary:
    run: antihypertensive-drugs-lopace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule174
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-chlorothiazide---primary/output
  antihypertensive-drugs-novartis---primary:
    run: antihypertensive-drugs-novartis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule175
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-lopace---primary/output
  antihypertensive-drugs-perdix---primary:
    run: antihypertensive-drugs-perdix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule176
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-novartis---primary/output
  antihypertensive-drugs-odrik---primary:
    run: antihypertensive-drugs-odrik---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule177
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-perdix---primary/output
  antihypertensive-drugs-neofel---primary:
    run: antihypertensive-drugs-neofel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule178
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-odrik---primary/output
  antihypertensive-drugs-160mg---primary:
    run: antihypertensive-drugs-160mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule179
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-neofel---primary/output
  antihypertensive-drugs-irbesartan---primary:
    run: antihypertensive-drugs-irbesartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule180
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-160mg---primary/output
  antihypertensive-drugs-mepranix---primary:
    run: antihypertensive-drugs-mepranix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule181
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-irbesartan---primary/output
  antihypertensive-drugs-burgess---primary:
    run: antihypertensive-drugs-burgess---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule182
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-mepranix---primary/output
  antihypertensive-drugs-hydrochloride---primary:
    run: antihypertensive-drugs-hydrochloride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule183
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-burgess---primary/output
  antihypertensive-drugs-benzthiazide---primary:
    run: antihypertensive-drugs-benzthiazide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule184
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-hydrochloride---primary/output
  antihypertensive-drugs-timolol---primary:
    run: antihypertensive-drugs-timolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule185
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-benzthiazide---primary/output
  antihypertensive-drugs-alliance---primary:
    run: antihypertensive-drugs-alliance---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule186
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-timolol---primary/output
  antihypertensive-drugs-natrilix---primary:
    run: antihypertensive-drugs-natrilix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule187
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-alliance---primary/output
  antihypertensive-drugs-takeda---primary:
    run: antihypertensive-drugs-takeda---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule188
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-natrilix---primary/output
  antihypertensive-drugs-lacidipine---primary:
    run: antihypertensive-drugs-lacidipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule189
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-takeda---primary/output
  antihypertensive-drugs-ecopace---primary:
    run: antihypertensive-drugs-ecopace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule190
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-lacidipine---primary/output
  antihypertensive-drugs-congescor---primary:
    run: antihypertensive-drugs-congescor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule191
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-ecopace---primary/output
  antihypertensive-drugs-sandoz---primary:
    run: antihypertensive-drugs-sandoz---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule192
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-congescor---primary/output
  antihypertensive-drugs-lexon---primary:
    run: antihypertensive-drugs-lexon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule193
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-sandoz---primary/output
  antihypertensive-drugs-zurich---primary:
    run: antihypertensive-drugs-zurich---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule194
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-lexon---primary/output
  antihypertensive-drugs-ednyt---primary:
    run: antihypertensive-drugs-ednyt---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule195
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-zurich---primary/output
  antihypertensive-drugs-perindopril---primary:
    run: antihypertensive-drugs-perindopril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule196
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-ednyt---primary/output
  antihypertensive-drugs-capoten---primary:
    run: antihypertensive-drugs-capoten---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule197
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-perindopril---primary/output
  antihypertensive-drugs-wockhardt---primary:
    run: antihypertensive-drugs-wockhardt---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule198
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-capoten---primary/output
  antihypertensive-drugs-actavis---primary:
    run: antihypertensive-drugs-actavis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule199
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-wockhardt---primary/output
  antihypertensive-drugs-parmid---primary:
    run: antihypertensive-drugs-parmid---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule200
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-actavis---primary/output
  antihypertensive-drugs-metoprolol---primary:
    run: antihypertensive-drugs-metoprolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule201
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-parmid---primary/output
  antihypertensive-drugs-amlodipine---primary:
    run: antihypertensive-drugs-amlodipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule202
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-metoprolol---primary/output
  antihypertensive-drugs-celltech---primary:
    run: antihypertensive-drugs-celltech---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule203
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-amlodipine---primary/output
  antihypertensive-drugs-genus---primary:
    run: antihypertensive-drugs-genus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule204
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-celltech---primary/output
  antihypertensive-drugs-dexcel---primary:
    run: antihypertensive-drugs-dexcel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule205
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-genus---primary/output
  antihypertensive-drugs-zentiva---primary:
    run: antihypertensive-drugs-zentiva---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule206
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-dexcel---primary/output
  antihypertensive-drugs-terazosin---primary:
    run: antihypertensive-drugs-terazosin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule207
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-zentiva---primary/output
  antihypertensive-drugs-sovereign---primary:
    run: antihypertensive-drugs-sovereign---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule208
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-terazosin---primary/output
  antihypertensive-drugs-hillcross---primary:
    run: antihypertensive-drugs-hillcross---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule209
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-sovereign---primary/output
  antihypertensive-drugs-celectol---primary:
    run: antihypertensive-drugs-celectol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule210
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-hillcross---primary/output
  antihypertensive-drugs-exforge---primary:
    run: antihypertensive-drugs-exforge---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule211
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-celectol---primary/output
  antihypertensive-drugs-valsartan---primary:
    run: antihypertensive-drugs-valsartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule212
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-exforge---primary/output
  antihypertensive-drugs-neozipine---primary:
    run: antihypertensive-drugs-neozipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule213
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-valsartan---primary/output
  antihypertensive-drugs-monocor---primary:
    run: antihypertensive-drugs-monocor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule214
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-neozipine---primary/output
  antihypertensive-drugs-cardozin---primary:
    run: antihypertensive-drugs-cardozin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule215
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-monocor---primary/output
  antihypertensive-drugs-sotalol---primary:
    run: antihypertensive-drugs-sotalol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule216
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-cardozin---primary/output
  antihypertensive-drugs-valni---primary:
    run: antihypertensive-drugs-valni---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule217
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-sotalol---primary/output
  antihypertensive-drugs-coamilofruse---primary:
    run: antihypertensive-drugs-coamilofruse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule218
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-valni---primary/output
  antihypertensive-drugs-arginine---primary:
    run: antihypertensive-drugs-arginine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule219
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-coamilofruse---primary/output
  antihypertensive-drugs-arrow---primary:
    run: antihypertensive-drugs-arrow---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule220
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-arginine---primary/output
  antihypertensive-drugs-tildiem---primary:
    run: antihypertensive-drugs-tildiem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule221
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-arrow---primary/output
  antihypertensive-drugs-quinil---primary:
    run: antihypertensive-drugs-quinil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule222
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-tildiem---primary/output
  zestoretic-antihypertensive-drugs---primary:
    run: zestoretic-antihypertensive-drugs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule223
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-quinil---primary/output
  antihypertensive-drugs-istin---primary:
    run: antihypertensive-drugs-istin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule224
      potentialCases:
        id: potentialCases
        source: zestoretic-antihypertensive-drugs---primary/output
  antihypertensive-drugs-sterwin---primary:
    run: antihypertensive-drugs-sterwin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule225
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-istin---primary/output
  antihypertensive-drugs-olmesartan---primary:
    run: antihypertensive-drugs-olmesartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule226
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-sterwin---primary/output
  antihypertensive-drugs-trandolapril---primary:
    run: antihypertensive-drugs-trandolapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule227
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-olmesartan---primary/output
  antihypertensive-drugs-coated---primary:
    run: antihypertensive-drugs-coated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule228
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-trandolapril---primary/output
  antihypertensive-drugs-celiprolol---primary:
    run: antihypertensive-drugs-celiprolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule229
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-coated---primary/output
  antihypertensive-drugs-focus---primary:
    run: antihypertensive-drugs-focus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule230
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-celiprolol---primary/output
  antihypertensive-drugs-240mg---primary:
    run: antihypertensive-drugs-240mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule231
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-focus---primary/output
  antihypertensive-drugs-tillomed---primary:
    run: antihypertensive-drugs-tillomed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule232
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-240mg---primary/output
  antihypertensive-drugs-amiloride---primary:
    run: antihypertensive-drugs-amiloride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule233
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-tillomed---primary/output
  antihypertensive-drugs-goldshield---primary:
    run: antihypertensive-drugs-goldshield---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule234
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-amiloride---primary/output
  antihypertensive-drugs-cardura---primary:
    run: antihypertensive-drugs-cardura---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule235
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-goldshield---primary/output
  antihypertensive-drugs-nicardipine---primary:
    run: antihypertensive-drugs-nicardipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule236
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-cardura---primary/output
  antihypertensive-drugs-adanif---primary:
    run: antihypertensive-drugs-adanif---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule237
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-nicardipine---primary/output
  antihypertensive-drugs-staril---primary:
    run: antihypertensive-drugs-staril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule238
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-adanif---primary/output
  antihypertensive-drugs-indapamide---primary:
    run: antihypertensive-drugs-indapamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule239
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-staril---primary/output
  antihypertensive-drugs-losartan---primary:
    run: antihypertensive-drugs-losartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule240
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-indapamide---primary/output
  antihypertensive-drugs-candesartan---primary:
    run: antihypertensive-drugs-candesartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule241
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-losartan---primary/output
  antihypertensive-drugs-cotriamterzide---primary:
    run: antihypertensive-drugs-cotriamterzide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule242
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-candesartan---primary/output
  antihypertensive-drugs-astrazenec---primary:
    run: antihypertensive-drugs-astrazenec---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule243
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-cotriamterzide---primary/output
  antihypertensive-drugs-modifiedrelease---primary:
    run: antihypertensive-drugs-modifiedrelease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule244
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-astrazenec---primary/output
  antihypertensive-drugs-azilsartan---primary:
    run: antihypertensive-drugs-azilsartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule245
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-modifiedrelease---primary/output
  antihypertensive-drugs-securon---primary:
    run: antihypertensive-drugs-securon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule246
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-azilsartan---primary/output
  antihypertensive-drugs-bedranol---primary:
    run: antihypertensive-drugs-bedranol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule247
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-securon---primary/output
  antihypertensive-drugs-adizemxl---primary:
    run: antihypertensive-drugs-adizemxl---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule248
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-bedranol---primary/output
  antihypertensive-drugs-injection---primary:
    run: antihypertensive-drugs-injection---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule249
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-adizemxl---primary/output
  antihypertensive-drugs-hydroflumethiazide---primary:
    run: antihypertensive-drugs-hydroflumethiazide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule250
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-injection---primary/output
  antihypertensive-drugs-carvedilol---primary:
    run: antihypertensive-drugs-carvedilol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule251
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-hydroflumethiazide---primary/output
  antihypertensive-drugs-lisinopril---primary:
    run: antihypertensive-drugs-lisinopril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule252
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-carvedilol---primary/output
  antihypertensive-drugs-metolazone---primary:
    run: antihypertensive-drugs-metolazone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule253
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-lisinopril---primary/output
  antihypertensive-drugs-folpik---primary:
    run: antihypertensive-drugs-folpik---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule254
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-metolazone---primary/output
  antihypertensive-drugs-zanidip---primary:
    run: antihypertensive-drugs-zanidip---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule255
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-folpik---primary/output
  antihypertensive-drugs-ampoule---primary:
    run: antihypertensive-drugs-ampoule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule256
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-zanidip---primary/output
  antihypertensive-drugs-lercanidipine---primary:
    run: antihypertensive-drugs-lercanidipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule257
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-ampoule---primary/output
  antihypertensive-drugs-tosilate---primary:
    run: antihypertensive-drugs-tosilate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule258
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-lercanidipine---primary/output
  antihypertensive-drugs-coversyl---primary:
    run: antihypertensive-drugs-coversyl---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule259
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-tosilate---primary/output
  antihypertensive-drugs-200mg---primary:
    run: antihypertensive-drugs-200mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule260
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-coversyl---primary/output
  antihypertensive-drugs-indoramin---primary:
    run: antihypertensive-drugs-indoramin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule261
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-200mg---primary/output
  antihypertensive-drugs-fosinopril---primary:
    run: antihypertensive-drugs-fosinopril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule262
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-indoramin---primary/output
  antihypertensive-drugs-nebivolol---primary:
    run: antihypertensive-drugs-nebivolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule263
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-fosinopril---primary/output
  generic-antihypertensive-drugs---primary:
    run: generic-antihypertensive-drugs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule264
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-nebivolol---primary/output
  antihypertensive-drugs-noyada---primary:
    run: antihypertensive-drugs-noyada---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule265
      potentialCases:
        id: potentialCases
        source: generic-antihypertensive-drugs---primary/output
  antihypertensive-drugs-verapamil---primary:
    run: antihypertensive-drugs-verapamil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule266
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-noyada---primary/output
  antihypertensive-drugs-plendil---primary:
    run: antihypertensive-drugs-plendil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule267
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-verapamil---primary/output
  antihypertensive-drugs-felodipine---primary:
    run: antihypertensive-drugs-felodipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule268
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-plendil---primary/output
  antihypertensive-drugs-solution---primary:
    run: antihypertensive-drugs-solution---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule269
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-felodipine---primary/output
  antihypertensive-drugs-nebilet---primary:
    run: antihypertensive-drugs-nebilet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule270
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-solution---primary/output
  antihypertensive-drugs-zestril---primary:
    run: antihypertensive-drugs-zestril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule271
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-nebilet---primary/output
  antihypertensive-drugs-aventi---primary:
    run: antihypertensive-drugs-aventi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule272
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-zestril---primary/output
  antihypertensive-drugs-tartrate---primary:
    run: antihypertensive-drugs-tartrate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule273
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-aventi---primary/output
  antihypertensive-drugs-aprinox---primary:
    run: antihypertensive-drugs-aprinox---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule274
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-tartrate---primary/output
  antihypertensive-drugs-potassium---primary:
    run: antihypertensive-drugs-potassium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule275
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-aprinox---primary/output
  geigy-antihypertensive-drugs---primary:
    run: geigy-antihypertensive-drugs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule276
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-potassium---primary/output
  antihypertensive-drugs-trandate---primary:
    run: antihypertensive-drugs-trandate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule277
      potentialCases:
        id: potentialCases
        source: geigy-antihypertensive-drugs---primary/output
  antihypertensive-drugs-innovace---primary:
    run: antihypertensive-drugs-innovace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule278
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-trandate---primary/output
  antihypertensive-drugs-hygroton---primary:
    run: antihypertensive-drugs-hygroton---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule279
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-innovace---primary/output
  antihypertensive-drugs-winthrop---primary:
    run: antihypertensive-drugs-winthrop---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule280
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-hygroton---primary/output
  antihypertensive-drugs-tritace---primary:
    run: antihypertensive-drugs-tritace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule281
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-winthrop---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule282
      potentialCases:
        id: potentialCases
        source: antihypertensive-drugs-tritace---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
  inputModule97:
    id: inputModule97
    doc: Python implementation unit
    type: File
  inputModule98:
    id: inputModule98
    doc: Python implementation unit
    type: File
  inputModule99:
    id: inputModule99
    doc: Python implementation unit
    type: File
  inputModule100:
    id: inputModule100
    doc: Python implementation unit
    type: File
  inputModule101:
    id: inputModule101
    doc: Python implementation unit
    type: File
  inputModule102:
    id: inputModule102
    doc: Python implementation unit
    type: File
  inputModule103:
    id: inputModule103
    doc: Python implementation unit
    type: File
  inputModule104:
    id: inputModule104
    doc: Python implementation unit
    type: File
  inputModule105:
    id: inputModule105
    doc: Python implementation unit
    type: File
  inputModule106:
    id: inputModule106
    doc: Python implementation unit
    type: File
  inputModule107:
    id: inputModule107
    doc: Python implementation unit
    type: File
  inputModule108:
    id: inputModule108
    doc: Python implementation unit
    type: File
  inputModule109:
    id: inputModule109
    doc: Python implementation unit
    type: File
  inputModule110:
    id: inputModule110
    doc: Python implementation unit
    type: File
  inputModule111:
    id: inputModule111
    doc: Python implementation unit
    type: File
  inputModule112:
    id: inputModule112
    doc: Python implementation unit
    type: File
  inputModule113:
    id: inputModule113
    doc: Python implementation unit
    type: File
  inputModule114:
    id: inputModule114
    doc: Python implementation unit
    type: File
  inputModule115:
    id: inputModule115
    doc: Python implementation unit
    type: File
  inputModule116:
    id: inputModule116
    doc: Python implementation unit
    type: File
  inputModule117:
    id: inputModule117
    doc: Python implementation unit
    type: File
  inputModule118:
    id: inputModule118
    doc: Python implementation unit
    type: File
  inputModule119:
    id: inputModule119
    doc: Python implementation unit
    type: File
  inputModule120:
    id: inputModule120
    doc: Python implementation unit
    type: File
  inputModule121:
    id: inputModule121
    doc: Python implementation unit
    type: File
  inputModule122:
    id: inputModule122
    doc: Python implementation unit
    type: File
  inputModule123:
    id: inputModule123
    doc: Python implementation unit
    type: File
  inputModule124:
    id: inputModule124
    doc: Python implementation unit
    type: File
  inputModule125:
    id: inputModule125
    doc: Python implementation unit
    type: File
  inputModule126:
    id: inputModule126
    doc: Python implementation unit
    type: File
  inputModule127:
    id: inputModule127
    doc: Python implementation unit
    type: File
  inputModule128:
    id: inputModule128
    doc: Python implementation unit
    type: File
  inputModule129:
    id: inputModule129
    doc: Python implementation unit
    type: File
  inputModule130:
    id: inputModule130
    doc: Python implementation unit
    type: File
  inputModule131:
    id: inputModule131
    doc: Python implementation unit
    type: File
  inputModule132:
    id: inputModule132
    doc: Python implementation unit
    type: File
  inputModule133:
    id: inputModule133
    doc: Python implementation unit
    type: File
  inputModule134:
    id: inputModule134
    doc: Python implementation unit
    type: File
  inputModule135:
    id: inputModule135
    doc: Python implementation unit
    type: File
  inputModule136:
    id: inputModule136
    doc: Python implementation unit
    type: File
  inputModule137:
    id: inputModule137
    doc: Python implementation unit
    type: File
  inputModule138:
    id: inputModule138
    doc: Python implementation unit
    type: File
  inputModule139:
    id: inputModule139
    doc: Python implementation unit
    type: File
  inputModule140:
    id: inputModule140
    doc: Python implementation unit
    type: File
  inputModule141:
    id: inputModule141
    doc: Python implementation unit
    type: File
  inputModule142:
    id: inputModule142
    doc: Python implementation unit
    type: File
  inputModule143:
    id: inputModule143
    doc: Python implementation unit
    type: File
  inputModule144:
    id: inputModule144
    doc: Python implementation unit
    type: File
  inputModule145:
    id: inputModule145
    doc: Python implementation unit
    type: File
  inputModule146:
    id: inputModule146
    doc: Python implementation unit
    type: File
  inputModule147:
    id: inputModule147
    doc: Python implementation unit
    type: File
  inputModule148:
    id: inputModule148
    doc: Python implementation unit
    type: File
  inputModule149:
    id: inputModule149
    doc: Python implementation unit
    type: File
  inputModule150:
    id: inputModule150
    doc: Python implementation unit
    type: File
  inputModule151:
    id: inputModule151
    doc: Python implementation unit
    type: File
  inputModule152:
    id: inputModule152
    doc: Python implementation unit
    type: File
  inputModule153:
    id: inputModule153
    doc: Python implementation unit
    type: File
  inputModule154:
    id: inputModule154
    doc: Python implementation unit
    type: File
  inputModule155:
    id: inputModule155
    doc: Python implementation unit
    type: File
  inputModule156:
    id: inputModule156
    doc: Python implementation unit
    type: File
  inputModule157:
    id: inputModule157
    doc: Python implementation unit
    type: File
  inputModule158:
    id: inputModule158
    doc: Python implementation unit
    type: File
  inputModule159:
    id: inputModule159
    doc: Python implementation unit
    type: File
  inputModule160:
    id: inputModule160
    doc: Python implementation unit
    type: File
  inputModule161:
    id: inputModule161
    doc: Python implementation unit
    type: File
  inputModule162:
    id: inputModule162
    doc: Python implementation unit
    type: File
  inputModule163:
    id: inputModule163
    doc: Python implementation unit
    type: File
  inputModule164:
    id: inputModule164
    doc: Python implementation unit
    type: File
  inputModule165:
    id: inputModule165
    doc: Python implementation unit
    type: File
  inputModule166:
    id: inputModule166
    doc: Python implementation unit
    type: File
  inputModule167:
    id: inputModule167
    doc: Python implementation unit
    type: File
  inputModule168:
    id: inputModule168
    doc: Python implementation unit
    type: File
  inputModule169:
    id: inputModule169
    doc: Python implementation unit
    type: File
  inputModule170:
    id: inputModule170
    doc: Python implementation unit
    type: File
  inputModule171:
    id: inputModule171
    doc: Python implementation unit
    type: File
  inputModule172:
    id: inputModule172
    doc: Python implementation unit
    type: File
  inputModule173:
    id: inputModule173
    doc: Python implementation unit
    type: File
  inputModule174:
    id: inputModule174
    doc: Python implementation unit
    type: File
  inputModule175:
    id: inputModule175
    doc: Python implementation unit
    type: File
  inputModule176:
    id: inputModule176
    doc: Python implementation unit
    type: File
  inputModule177:
    id: inputModule177
    doc: Python implementation unit
    type: File
  inputModule178:
    id: inputModule178
    doc: Python implementation unit
    type: File
  inputModule179:
    id: inputModule179
    doc: Python implementation unit
    type: File
  inputModule180:
    id: inputModule180
    doc: Python implementation unit
    type: File
  inputModule181:
    id: inputModule181
    doc: Python implementation unit
    type: File
  inputModule182:
    id: inputModule182
    doc: Python implementation unit
    type: File
  inputModule183:
    id: inputModule183
    doc: Python implementation unit
    type: File
  inputModule184:
    id: inputModule184
    doc: Python implementation unit
    type: File
  inputModule185:
    id: inputModule185
    doc: Python implementation unit
    type: File
  inputModule186:
    id: inputModule186
    doc: Python implementation unit
    type: File
  inputModule187:
    id: inputModule187
    doc: Python implementation unit
    type: File
  inputModule188:
    id: inputModule188
    doc: Python implementation unit
    type: File
  inputModule189:
    id: inputModule189
    doc: Python implementation unit
    type: File
  inputModule190:
    id: inputModule190
    doc: Python implementation unit
    type: File
  inputModule191:
    id: inputModule191
    doc: Python implementation unit
    type: File
  inputModule192:
    id: inputModule192
    doc: Python implementation unit
    type: File
  inputModule193:
    id: inputModule193
    doc: Python implementation unit
    type: File
  inputModule194:
    id: inputModule194
    doc: Python implementation unit
    type: File
  inputModule195:
    id: inputModule195
    doc: Python implementation unit
    type: File
  inputModule196:
    id: inputModule196
    doc: Python implementation unit
    type: File
  inputModule197:
    id: inputModule197
    doc: Python implementation unit
    type: File
  inputModule198:
    id: inputModule198
    doc: Python implementation unit
    type: File
  inputModule199:
    id: inputModule199
    doc: Python implementation unit
    type: File
  inputModule200:
    id: inputModule200
    doc: Python implementation unit
    type: File
  inputModule201:
    id: inputModule201
    doc: Python implementation unit
    type: File
  inputModule202:
    id: inputModule202
    doc: Python implementation unit
    type: File
  inputModule203:
    id: inputModule203
    doc: Python implementation unit
    type: File
  inputModule204:
    id: inputModule204
    doc: Python implementation unit
    type: File
  inputModule205:
    id: inputModule205
    doc: Python implementation unit
    type: File
  inputModule206:
    id: inputModule206
    doc: Python implementation unit
    type: File
  inputModule207:
    id: inputModule207
    doc: Python implementation unit
    type: File
  inputModule208:
    id: inputModule208
    doc: Python implementation unit
    type: File
  inputModule209:
    id: inputModule209
    doc: Python implementation unit
    type: File
  inputModule210:
    id: inputModule210
    doc: Python implementation unit
    type: File
  inputModule211:
    id: inputModule211
    doc: Python implementation unit
    type: File
  inputModule212:
    id: inputModule212
    doc: Python implementation unit
    type: File
  inputModule213:
    id: inputModule213
    doc: Python implementation unit
    type: File
  inputModule214:
    id: inputModule214
    doc: Python implementation unit
    type: File
  inputModule215:
    id: inputModule215
    doc: Python implementation unit
    type: File
  inputModule216:
    id: inputModule216
    doc: Python implementation unit
    type: File
  inputModule217:
    id: inputModule217
    doc: Python implementation unit
    type: File
  inputModule218:
    id: inputModule218
    doc: Python implementation unit
    type: File
  inputModule219:
    id: inputModule219
    doc: Python implementation unit
    type: File
  inputModule220:
    id: inputModule220
    doc: Python implementation unit
    type: File
  inputModule221:
    id: inputModule221
    doc: Python implementation unit
    type: File
  inputModule222:
    id: inputModule222
    doc: Python implementation unit
    type: File
  inputModule223:
    id: inputModule223
    doc: Python implementation unit
    type: File
  inputModule224:
    id: inputModule224
    doc: Python implementation unit
    type: File
  inputModule225:
    id: inputModule225
    doc: Python implementation unit
    type: File
  inputModule226:
    id: inputModule226
    doc: Python implementation unit
    type: File
  inputModule227:
    id: inputModule227
    doc: Python implementation unit
    type: File
  inputModule228:
    id: inputModule228
    doc: Python implementation unit
    type: File
  inputModule229:
    id: inputModule229
    doc: Python implementation unit
    type: File
  inputModule230:
    id: inputModule230
    doc: Python implementation unit
    type: File
  inputModule231:
    id: inputModule231
    doc: Python implementation unit
    type: File
  inputModule232:
    id: inputModule232
    doc: Python implementation unit
    type: File
  inputModule233:
    id: inputModule233
    doc: Python implementation unit
    type: File
  inputModule234:
    id: inputModule234
    doc: Python implementation unit
    type: File
  inputModule235:
    id: inputModule235
    doc: Python implementation unit
    type: File
  inputModule236:
    id: inputModule236
    doc: Python implementation unit
    type: File
  inputModule237:
    id: inputModule237
    doc: Python implementation unit
    type: File
  inputModule238:
    id: inputModule238
    doc: Python implementation unit
    type: File
  inputModule239:
    id: inputModule239
    doc: Python implementation unit
    type: File
  inputModule240:
    id: inputModule240
    doc: Python implementation unit
    type: File
  inputModule241:
    id: inputModule241
    doc: Python implementation unit
    type: File
  inputModule242:
    id: inputModule242
    doc: Python implementation unit
    type: File
  inputModule243:
    id: inputModule243
    doc: Python implementation unit
    type: File
  inputModule244:
    id: inputModule244
    doc: Python implementation unit
    type: File
  inputModule245:
    id: inputModule245
    doc: Python implementation unit
    type: File
  inputModule246:
    id: inputModule246
    doc: Python implementation unit
    type: File
  inputModule247:
    id: inputModule247
    doc: Python implementation unit
    type: File
  inputModule248:
    id: inputModule248
    doc: Python implementation unit
    type: File
  inputModule249:
    id: inputModule249
    doc: Python implementation unit
    type: File
  inputModule250:
    id: inputModule250
    doc: Python implementation unit
    type: File
  inputModule251:
    id: inputModule251
    doc: Python implementation unit
    type: File
  inputModule252:
    id: inputModule252
    doc: Python implementation unit
    type: File
  inputModule253:
    id: inputModule253
    doc: Python implementation unit
    type: File
  inputModule254:
    id: inputModule254
    doc: Python implementation unit
    type: File
  inputModule255:
    id: inputModule255
    doc: Python implementation unit
    type: File
  inputModule256:
    id: inputModule256
    doc: Python implementation unit
    type: File
  inputModule257:
    id: inputModule257
    doc: Python implementation unit
    type: File
  inputModule258:
    id: inputModule258
    doc: Python implementation unit
    type: File
  inputModule259:
    id: inputModule259
    doc: Python implementation unit
    type: File
  inputModule260:
    id: inputModule260
    doc: Python implementation unit
    type: File
  inputModule261:
    id: inputModule261
    doc: Python implementation unit
    type: File
  inputModule262:
    id: inputModule262
    doc: Python implementation unit
    type: File
  inputModule263:
    id: inputModule263
    doc: Python implementation unit
    type: File
  inputModule264:
    id: inputModule264
    doc: Python implementation unit
    type: File
  inputModule265:
    id: inputModule265
    doc: Python implementation unit
    type: File
  inputModule266:
    id: inputModule266
    doc: Python implementation unit
    type: File
  inputModule267:
    id: inputModule267
    doc: Python implementation unit
    type: File
  inputModule268:
    id: inputModule268
    doc: Python implementation unit
    type: File
  inputModule269:
    id: inputModule269
    doc: Python implementation unit
    type: File
  inputModule270:
    id: inputModule270
    doc: Python implementation unit
    type: File
  inputModule271:
    id: inputModule271
    doc: Python implementation unit
    type: File
  inputModule272:
    id: inputModule272
    doc: Python implementation unit
    type: File
  inputModule273:
    id: inputModule273
    doc: Python implementation unit
    type: File
  inputModule274:
    id: inputModule274
    doc: Python implementation unit
    type: File
  inputModule275:
    id: inputModule275
    doc: Python implementation unit
    type: File
  inputModule276:
    id: inputModule276
    doc: Python implementation unit
    type: File
  inputModule277:
    id: inputModule277
    doc: Python implementation unit
    type: File
  inputModule278:
    id: inputModule278
    doc: Python implementation unit
    type: File
  inputModule279:
    id: inputModule279
    doc: Python implementation unit
    type: File
  inputModule280:
    id: inputModule280
    doc: Python implementation unit
    type: File
  inputModule281:
    id: inputModule281
    doc: Python implementation unit
    type: File
  inputModule282:
    id: inputModule282
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
