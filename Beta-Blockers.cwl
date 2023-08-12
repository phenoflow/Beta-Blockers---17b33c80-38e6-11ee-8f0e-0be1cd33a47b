cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  inderal-beta-blockers---primary:
    run: inderal-beta-blockers---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  beta-blockers-atenix---primary:
    run: beta-blockers-atenix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: inderal-beta-blockers---primary/output
  beta-blockers-lopresor---primary:
    run: beta-blockers-lopresor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: beta-blockers-atenix---primary/output
  beta-blockers-cobetaloc---primary:
    run: beta-blockers-cobetaloc---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: beta-blockers-lopresor---primary/output
  beta-blockers-corgard---primary:
    run: beta-blockers-corgard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: beta-blockers-cobetaloc---primary/output
  beta-blockers-trasicor---primary:
    run: beta-blockers-trasicor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: beta-blockers-corgard---primary/output
  beta-blockers-emcor---primary:
    run: beta-blockers-emcor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: beta-blockers-trasicor---primary/output
  beta-blockers-025mg---primary:
    run: beta-blockers-025mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: beta-blockers-emcor---primary/output
  beta-blockers-sotacor---primary:
    run: beta-blockers-sotacor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: beta-blockers-025mg---primary/output
  beta-blockers-timoptolla---primary:
    run: beta-blockers-timoptolla---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: beta-blockers-sotacor---primary/output
  beta-blockers-gelforming---primary:
    run: beta-blockers-gelforming---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: beta-blockers-timoptolla---primary/output
  beta-blockers-propanolol---primary:
    run: beta-blockers-propanolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: beta-blockers-gelforming---primary/output
  beta-blockers-025ml---primary:
    run: beta-blockers-025ml---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: beta-blockers-propanolol---primary/output
  beta-blockers-betim---primary:
    run: beta-blockers-betim---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: beta-blockers-025ml---primary/output
  beta-blockers-betaxolol---primary:
    run: beta-blockers-betaxolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: beta-blockers-betim---primary/output
  beta-blockers-glauline---primary:
    run: beta-blockers-glauline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: beta-blockers-betaxolol---primary/output
  sectral-beta-blockers---primary:
    run: sectral-beta-blockers---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: beta-blockers-glauline---primary/output
  beta-blockers-tablet---primary:
    run: beta-blockers-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: sectral-beta-blockers---primary/output
  beta-blockers-berkolol---primary:
    run: beta-blockers-berkolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: beta-blockers-tablet---primary/output
  beta-blockers-200mg---primary:
    run: beta-blockers-200mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: beta-blockers-berkolol---primary/output
  beta-blockers-metipranolol---primary:
    run: beta-blockers-metipranolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: beta-blockers-200mg---primary/output
  beta-blockers-3125mg---primary:
    run: beta-blockers-3125mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: beta-blockers-metipranolol---primary/output
  beta-blockers-100mg---primary:
    run: beta-blockers-100mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: beta-blockers-3125mg---primary/output
  beta-blockers-400mg---primary:
    run: beta-blockers-400mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: beta-blockers-100mg---primary/output
  beta-blockers-sotalol---primary:
    run: beta-blockers-sotalol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: beta-blockers-400mg---primary/output
  beta-blockers-oxprenolol---primary:
    run: beta-blockers-oxprenolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: beta-blockers-sotalol---primary/output
  beta-blockers-betacardone---primary:
    run: beta-blockers-betacardone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: beta-blockers-oxprenolol---primary/output
  beta-blockers-clopamide---primary:
    run: beta-blockers-clopamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: beta-blockers-betacardone---primary/output
  eucardic-beta-blockers---primary:
    run: eucardic-beta-blockers---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: beta-blockers-clopamide---primary/output
  beta-blockers-acebutolol---primary:
    run: beta-blockers-acebutolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: eucardic-beta-blockers---primary/output
  beta-blockers-minim---primary:
    run: beta-blockers-minim---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: beta-blockers-acebutolol---primary/output
  beta-blockers-40microgram---primary:
    run: beta-blockers-40microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: beta-blockers-minim---primary/output
  corgaretic-beta-blockers---primary:
    run: corgaretic-beta-blockers---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: beta-blockers-40microgram---primary/output
  beta-blockers-propanix---primary:
    run: beta-blockers-propanix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: corgaretic-beta-blockers---primary/output
  beta-blockers-pindolol---primary:
    run: beta-blockers-pindolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: beta-blockers-propanix---primary/output
  beta-blockers-bedranol---primary:
    run: beta-blockers-bedranol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: beta-blockers-pindolol---primary/output
  beta-blockers-drops---primary:
    run: beta-blockers-drops---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: beta-blockers-bedranol---primary/output
  beta-blockers-nifedipine---primary:
    run: beta-blockers-nifedipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: beta-blockers-drops---primary/output
  beta-blockers-totamol---primary:
    run: beta-blockers-totamol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: beta-blockers-nifedipine---primary/output
  beta-blockers-chlortalidone---primary:
    run: beta-blockers-chlortalidone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: beta-blockers-totamol---primary/output
  beta-blockers-capsule---primary:
    run: beta-blockers-capsule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: beta-blockers-chlortalidone---primary/output
  beta-blockers-labetalol---primary:
    run: beta-blockers-labetalol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: beta-blockers-capsule---primary/output
  beta-blockers-labrocol---primary:
    run: beta-blockers-labrocol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: beta-blockers-labetalol---primary/output
  beta-blockers-celectol---primary:
    run: beta-blockers-celectol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: beta-blockers-labrocol---primary/output
  beta-blockers-betaadalat---primary:
    run: beta-blockers-betaadalat---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: beta-blockers-celectol---primary/output
  beta-blockers-maleate---primary:
    run: beta-blockers-maleate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: beta-blockers-betaadalat---primary/output
  beta-blockers-625mg---primary:
    run: beta-blockers-625mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: beta-blockers-maleate---primary/output
  beta-blockers-375mg---primary:
    run: beta-blockers-375mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: beta-blockers-625mg---primary/output
  beta-blockers-levobunolol---primary:
    run: beta-blockers-levobunolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: beta-blockers-375mg---primary/output
  beta-blockers-atenolol---primary:
    run: beta-blockers-atenolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: beta-blockers-levobunolol---primary/output
  beta-blockers-cardicor---primary:
    run: beta-blockers-cardicor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: beta-blockers-atenolol---primary/output
  beta-blockers-trandate---primary:
    run: beta-blockers-trandate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: beta-blockers-cardicor---primary/output
  beta-blockers-visken---primary:
    run: beta-blockers-visken---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: beta-blockers-trandate---primary/output
  beta-blockers-injection---primary:
    run: beta-blockers-injection---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: beta-blockers-visken---primary/output
  beta-blockers-ganfort---primary:
    run: beta-blockers-ganfort---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: beta-blockers-injection---primary/output
  beta-blockers-betaprograne---primary:
    run: beta-blockers-betaprograne---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: beta-blockers-ganfort---primary/output
  beta-blockers-atenamin---primary:
    run: beta-blockers-atenamin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: beta-blockers-betaprograne---primary/output
  beta-blockers-prestim---primary:
    run: beta-blockers-prestim---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: beta-blockers-atenamin---primary/output
  beta-blockers-glauopt---primary:
    run: beta-blockers-glauopt---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: beta-blockers-prestim---primary/output
  beta-blockers-160mg---primary:
    run: beta-blockers-160mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: beta-blockers-glauopt---primary/output
  beta-blockers-bipranix---primary:
    run: beta-blockers-bipranix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: beta-blockers-160mg---primary/output
  beta-blockers-modifiedrelease---primary:
    run: beta-blockers-modifiedrelease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: beta-blockers-bipranix---primary/output
  beta-blockers-glaucol---primary:
    run: beta-blockers-glaucol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: beta-blockers-modifiedrelease---primary/output
  preservative-beta-blockers---primary:
    run: preservative-beta-blockers---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: beta-blockers-glaucol---primary/output
  beta-blockers-antipressan---primary:
    run: beta-blockers-antipressan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: preservative-beta-blockers---primary/output
  totaretic-beta-blockers---primary:
    run: totaretic-beta-blockers---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: beta-blockers-antipressan---primary/output
  beta-blockers-tenormin---primary:
    run: beta-blockers-tenormin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: totaretic-beta-blockers---primary/output
  beta-blockers-vivacor---primary:
    run: beta-blockers-vivacor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: beta-blockers-tenormin---primary/output
  beta-blockers-nadolol---primary:
    run: beta-blockers-nadolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: beta-blockers-vivacor---primary/output
  betoptic-beta-blockers---primary:
    run: betoptic-beta-blockers---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: beta-blockers-nadolol---primary/output
  beta-blockers-rapranol---primary:
    run: beta-blockers-rapranol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: betoptic-beta-blockers---primary/output
  beta-blockers-apsolol---primary:
    run: beta-blockers-apsolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: beta-blockers-rapranol---primary/output
  beta-blockers-tenchlor---primary:
    run: beta-blockers-tenchlor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: beta-blockers-apsolol---primary/output
  beta-blockers-healthcare---primary:
    run: beta-blockers-healthcare---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: beta-blockers-tenchlor---primary/output
  beta-blockers-cosopt---primary:
    run: beta-blockers-cosopt---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: beta-blockers-healthcare---primary/output
  beta-blockers-metoro---primary:
    run: beta-blockers-metoro---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: beta-blockers-cosopt---primary/output
  beta-blockers-angilol---primary:
    run: beta-blockers-angilol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: beta-blockers-metoro---primary/output
  beta-blockers-amiloride---primary:
    run: beta-blockers-amiloride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: beta-blockers-angilol---primary/output
  beta-blockers-tartrate---primary:
    run: beta-blockers-tartrate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: beta-blockers-amiloride---primary/output
  beta-blockers-mepranix---primary:
    run: beta-blockers-mepranix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: beta-blockers-tartrate---primary/output
  beta-blockers-carteolol---primary:
    run: beta-blockers-carteolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: beta-blockers-mepranix---primary/output
  beta-blockers-concentrate---primary:
    run: beta-blockers-concentrate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: beta-blockers-carteolol---primary/output
  teoptic-beta-blockers---primary:
    run: teoptic-beta-blockers---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: beta-blockers-concentrate---primary/output
  beta-blockers-metoprolol---primary:
    run: beta-blockers-metoprolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: teoptic-beta-blockers---primary/output
  beta-blockers-congescor---primary:
    run: beta-blockers-congescor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: beta-blockers-metoprolol---primary/output
  beta-blockers-timolol---primary:
    run: beta-blockers-timolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: beta-blockers-congescor---primary/output
  beta-blockers-betaloc---primary:
    run: beta-blockers-betaloc---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: beta-blockers-timolol---primary/output
  beta-blockers-dorzolamide---primary:
    run: beta-blockers-dorzolamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: beta-blockers-betaloc---primary/output
  beta-blockers-monocor---primary:
    run: beta-blockers-monocor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: beta-blockers-dorzolamide---primary/output
  beta-blockers-betagan---primary:
    run: beta-blockers-betagan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: beta-blockers-monocor---primary/output
  beta-blockers-ampoule---primary:
    run: beta-blockers-ampoule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: beta-blockers-betagan---primary/output
  beta-blockers-esmolol---primary:
    run: beta-blockers-esmolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: beta-blockers-ampoule---primary/output
  beta-blockers-celiprolol---primary:
    run: beta-blockers-celiprolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: beta-blockers-esmolol---primary/output
  beta-blockers-cyclopenthiazide---primary:
    run: beta-blockers-cyclopenthiazide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: beta-blockers-celiprolol---primary/output
  beta-blockers-nebivolol---primary:
    run: beta-blockers-nebivolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: beta-blockers-cyclopenthiazide---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: beta-blockers-nebivolol---primary/output
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
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
