defmodule AdventOfCode2021.DayOneTest do
  use ExUnit.Case
  alias AdventOfCode2021.DayOne

  test "How many measurements are larger than the previous measurement?" do
    test_input = "199
      200
      208
      210
      200
      207
      240
      269
      260
      263"
    assert 7 == DayOne.count_measurements(test_input)
  end

  test "Puzzle input" do
    puzzle_input = "124
    125
    127
    128
    132
    140
    142
    103
    102
    110
    101
    107
    109
    113
    119
    120
    122
    124
    125
    121
    119
    139
    159
    164
    165
    177
    190
    181
    182
    171
    192
    185
    184
    186
    183
    203
    204
    209
    210
    214
    215
    213
    235
    257
    271
    278
    279
    284
    286
    289
    290
    287
    291
    297
    287
    290
    273
    280
    284
    288
    289
    294
    310
    324
    319
    320
    324
    325
    327
    328
    326
    328
    300
    301
    302
    306
    308
    315
    349
    364
    365
    367
    369
    376
    384
    386
    378
    382
    396
    427
    435
    434
    437
    424
    432
    443
    453
    451
    453
    440
    446
    447
    448
    449
    454
    462
    463
    448
    447
    448
    460
    468
    469
    470
    473
    479
    480
    481
    488
    498
    499
    502
    504
    510
    513
    507
    506
    504
    507
    518
    520
    519
    515
    520
    536
    534
    535
    537
    554
    555
    556
    558
    554
    566
    558
    542
    545
    552
    556
    563
    550
    559
    560
    561
    562
    563
    559
    562
    564
    565
    578
    580
    587
    571
    579
    586
    602
    614
    618
    630
    632
    624
    628
    637
    639
    645
    648
    654
    655
    664
    673
    674
    677
    709
    710
    712
    706
    710
    713
    701
    705
    707
    708
    711
    713
    714
    713
    716
    721
    756
    747
    757
    764
    763
    762
    766
    801
    798
    804
    798
    788
    785
    787
    788
    832
    834
    835
    834
    844
    851
    854
    867
    878
    893
    899
    900
    901
    910
    912
    916
    917
    912
    938
    933
    935
    960
    955
    958
    969
    970
    975
    977
    978
    1009
    1007
    1018
    1019
    1024
    1027
    1020
    1033
    1034
    1025
    1039
    1040
    1039
    1041
    1042
    1043
    1062
    1064
    1075
    1080
    1101
    1100
    1097
    1117
    1144
    1145
    1142
    1141
    1153
    1163
    1179
    1184
    1185
    1195
    1194
    1203
    1196
    1201
    1202
    1226
    1227
    1230
    1238
    1242
    1246
    1247
    1260
    1263
    1253
    1247
    1267
    1268
    1274
    1258
    1276
    1277
    1276
    1272
    1266
    1272
    1282
    1301
    1272
    1275
    1279
    1280
    1281
    1293
    1292
    1295
    1303
    1334
    1332
    1326
    1327
    1311
    1310
    1311
    1315
    1317
    1320
    1317
    1320
    1324
    1318
    1314
    1308
    1304
    1305
    1321
    1325
    1327
    1349
    1352
    1378
    1399
    1407
    1408
    1422
    1423
    1408
    1411
    1392
    1395
    1394
    1396
    1409
    1424
    1425
    1431
    1435
    1451
    1448
    1461
    1465
    1466
    1467
    1470
    1469
    1476
    1480
    1479
    1482
    1483
    1488
    1526
    1531
    1552
    1560
    1577
    1584
    1581
    1570
    1568
    1584
    1594
    1595
    1604
    1610
    1615
    1616
    1648
    1661
    1684
    1685
    1686
    1700
    1712
    1719
    1684
    1685
    1678
    1682
    1693
    1685
    1687
    1684
    1709
    1715
    1719
    1720
    1726
    1739
    1750
    1751
    1754
    1755
    1754
    1746
    1766
    1771
    1774
    1775
    1776
    1813
    1814
    1812
    1811
    1805
    1803
    1806
    1800
    1804
    1801
    1803
    1810
    1826
    1825
    1826
    1837
    1858
    1865
    1872
    1862
    1881
    1894
    1891
    1907
    1909
    1901
    1903
    1904
    1902
    1903
    1902
    1924
    1935
    1932
    1936
    1938
    1933
    1941
    1932
    1933
    1943
    1959
    1964
    1967
    1969
    1967
    1968
    1967
    1970
    1965
    1966
    1968
    1979
    1982
    1981
    1991
    1992
    2016
    2021
    2026
    2037
    2045
    2046
    2050
    2051
    2049
    2059
    2062
    2068
    2064
    2069
    2071
    2073
    2088
    2109
    2090
    2119
    2132
    2133
    2139
    2142
    2161
    2156
    2174
    2208
    2209
    2226
    2228
    2232
    2242
    2245
    2223
    2227
    2222
    2251
    2266
    2265
    2261
    2265
    2287
    2290
    2292
    2302
    2304
    2295
    2296
    2299
    2300
    2295
    2294
    2295
    2311
    2317
    2322
    2324
    2325
    2327
    2315
    2318
    2323
    2333
    2334
    2338
    2340
    2348
    2349
    2361
    2362
    2363
    2364
    2365
    2373
    2372
    2369
    2364
    2374
    2377
    2401
    2369
    2377
    2386
    2385
    2392
    2395
    2396
    2416
    2420
    2411
    2412
    2428
    2432
    2446
    2444
    2446
    2451
    2453
    2448
    2452
    2435
    2441
    2447
    2448
    2451
    2455
    2458
    2465
    2475
    2486
    2488
    2492
    2495
    2461
    2464
    2467
    2478
    2486
    2462
    2464
    2468
    2501
    2505
    2506
    2507
    2516
    2523
    2526
    2530
    2529
    2530
    2538
    2540
    2546
    2537
    2545
    2550
    2551
    2550
    2552
    2557
    2561
    2539
    2554
    2557
    2550
    2552
    2559
    2537
    2557
    2558
    2563
    2567
    2560
    2562
    2573
    2583
    2588
    2613
    2612
    2617
    2620
    2619
    2624
    2625
    2626
    2616
    2618
    2620
    2625
    2639
    2654
    2645
    2648
    2656
    2652
    2647
    2659
    2661
    2659
    2661
    2662
    2669
    2650
    2656
    2659
    2662
    2668
    2669
    2673
    2675
    2708
    2718
    2734
    2745
    2743
    2753
    2767
    2763
    2749
    2759
    2760
    2761
    2754
    2763
    2764
    2775
    2776
    2777
    2778
    2788
    2793
    2776
    2779
    2781
    2779
    2778
    2779
    2786
    2820
    2821
    2824
    2820
    2813
    2819
    2824
    2827
    2832
    2833
    2866
    2884
    2892
    2901
    2917
    2916
    2927
    2928
    2939
    2944
    2945
    2947
    2953
    2958
    2963
    2962
    2969
    2970
    2971
    2973
    2975
    2976
    2979
    2987
    2984
    2983
    2987
    2990
    3004
    3001
    3004
    2992
    3000
    3003
    3005
    3006
    3005
    3001
    3009
    3023
    3037
    3040
    3043
    3052
    3053
    3056
    3077
    3088
    3108
    3110
    3111
    3112
    3114
    3123
    3120
    3117
    3119
    3123
    3122
    3132
    3129
    3116
    3117
    3119
    3121
    3120
    3123
    3126
    3156
    3159
    3162
    3171
    3176
    3178
    3179
    3194
    3199
    3207
    3211
    3213
    3225
    3226
    3233
    3236
    3240
    3244
    3249
    3254
    3257
    3256
    3260
    3263
    3268
    3262
    3247
    3253
    3267
    3268
    3269
    3282
    3272
    3279
    3280
    3298
    3300
    3322
    3305
    3302
    3318
    3323
    3337
    3348
    3355
    3363
    3365
    3368
    3369
    3381
    3385
    3419
    3421
    3408
    3426
    3434
    3450
    3446
    3451
    3453
    3452
    3453
    3456
    3451
    3442
    3444
    3469
    3464
    3454
    3459
    3456
    3453
    3456
    3467
    3471
    3472
    3466
    3471
    3484
    3489
    3512
    3521
    3523
    3526
    3531
    3525
    3526
    3545
    3554
    3565
    3566
    3565
    3576
    3594
    3595
    3617
    3612
    3618
    3619
    3603
    3627
    3631
    3627
    3629
    3628
    3658
    3689
    3694
    3696
    3698
    3700
    3698
    3696
    3694
    3691
    3692
    3694
    3707
    3706
    3708
    3709
    3717
    3718
    3723
    3735
    3742
    3744
    3774
    3793
    3802
    3803
    3808
    3807
    3829
    3821
    3822
    3829
    3831
    3844
    3846
    3847
    3849
    3856
    3862
    3879
    3886
    3893
    3916
    3917
    3914
    3913
    3916
    3909
    3924
    3922
    3918
    3921
    3932
    3934
    3935
    3934
    3937
    3953
    3959
    3977
    3985
    3982
    3990
    3991
    3992
    3993
    4014
    4001
    4011
    4029
    4030
    4040
    4039
    4041
    4052
    4068
    4060
    4061
    4055
    4054
    4057
    4061
    4063
    4077
    4079
    4105
    4109
    4111
    4112
    4116
    4117
    4120
    4095
    4106
    4122
    4152
    4147
    4161
    4163
    4164
    4165
    4180
    4195
    4207
    4213
    4220
    4230
    4234
    4236
    4260
    4265
    4282
    4293
    4302
    4288
    4304
    4305
    4323
    4315
    4309
    4305
    4304
    4312
    4319
    4321
    4336
    4361
    4360
    4361
    4362
    4357
    4358
    4357
    4358
    4355
    4354
    4364
    4369
    4367
    4386
    4385
    4369
    4365
    4357
    4372
    4391
    4384
    4383
    4395
    4406
    4413
    4395
    4398
    4424
    4426
    4435
    4436
    4443
    4440
    4432
    4420
    4422
    4431
    4443
    4445
    4449
    4471
    4473
    4479
    4481
    4482
    4480
    4481
    4512
    4521
    4540
    4545
    4547
    4529
    4534
    4542
    4543
    4544
    4551
    4548
    4549
    4552
    4553
    4559
    4549
    4550
    4563
    4564
    4568
    4569
    4571
    4572
    4573
    4560
    4587
    4599
    4600
    4601
    4602
    4603
    4643
    4636
    4635
    4636
    4634
    4636
    4646
    4626
    4630
    4648
    4649
    4652
    4653
    4654
    4656
    4655
    4662
    4696
    4699
    4693
    4697
    4695
    4694
    4696
    4703
    4743
    4745
    4746
    4752
    4753
    4766
    4780
    4781
    4783
    4784
    4785
    4764
    4747
    4746
    4756
    4772
    4789
    4807
    4808
    4810
    4826
    4831
    4848
    4854
    4855
    4854
    4853
    4856
    4876
    4917
    4920
    4921
    4923
    4930
    4945
    4948
    4939
    4940
    4942
    4941
    4945
    4946
    4961
    4988
    4979
    4990
    4991
    4992
    4990
    4954
    4948
    4954
    4966
    5009
    5011
    5014
    5036
    5038
    5042
    5039
    5069
    5076
    5078
    5104
    5095
    5121
    5128
    5122
    5123
    5124
    5128
    5132
    5140
    5164
    5166
    5175
    5181
    5173
    5183
    5188
    5196
    5205
    5207
    5208
    5219
    5221
    5223
    5222
    5230
    5231
    5237
    5238
    5240
    5248
    5258
    5259
    5283
    5286
    5293
    5313
    5321
    5308
    5324
    5325
    5346
    5357
    5348
    5361
    5375
    5379
    5380
    5383
    5389
    5386
    5387
    5390
    5371
    5379
    5397
    5403
    5397
    5399
    5404
    5432
    5443
    5449
    5450
    5449
    5460
    5465
    5463
    5465
    5459
    5470
    5471
    5472
    5474
    5475
    5495
    5496
    5500
    5506
    5507
    5506
    5507
    5506
    5508
    5527
    5528
    5536
    5567
    5592
    5593
    5597
    5588
    5598
    5605
    5614
    5621
    5622
    5621
    5622
    5655
    5656
    5659
    5663
    5667
    5666
    5686
    5693
    5692
    5689
    5685
    5686
    5691
    5692
    5699
    5700
    5677
    5681
    5690
    5701
    5711
    5712
    5724
    5723
    5724
    5725
    5742
    5743
    5747
    5764
    5768
    5777
    5759
    5741
    5760
    5761
    5739
    5741
    5742
    5753
    5749
    5750
    5770
    5780
    5791
    5805
    5806
    5807
    5808
    5813
    5815
    5818
    5835
    5843
    5844
    5853
    5833
    5835
    5836
    5842
    5869
    5881
    5901
    5903
    5897
    5905
    5907
    5908
    5906
    5938
    5942
    5943
    5944
    5950
    5955
    5963
    5974
    5981
    5982
    5983
    5993
    5998
    6014
    6036
    6043
    6047
    6053
    6070
    6075
    6081
    6089
    6093
    6096
    6101
    6106
    6109
    6138
    6126
    6116
    6122
    6123
    6102
    6120
    6119
    6120
    6121
    6122
    6127
    6128
    6121
    6130
    6154
    6160
    6159
    6182
    6188
    6186
    6184
    6186
    6187
    6182
    6184
    6183
    6178
    6206
    6203
    6201
    6213
    6224
    6226
    6228
    6237
    6246
    6247
    6276
    6280
    6273
    6271
    6274
    6273
    6275
    6269
    6271
    6269
    6271
    6283
    6284
    6290
    6291
    6305
    6300
    6302
    6303
    6322
    6321
    6330
    6337
    6325
    6298
    6299
    6313
    6314
    6311
    6310
    6311
    6314
    6319
    6320
    6322
    6314
    6324
    6336
    6343
    6345
    6326
    6332
    6330
    6312
    6320
    6318
    6308
    6309
    6311
    6313
    6314
    6309
    6292
    6293
    6300
    6306
    6313
    6314
    6318
    6319
    6315
    6314
    6323
    6327
    6328
    6325
    6327
    6347
    6346
    6355
    6357
    6358
    6361
    6376
    6338
    6343
    6355
    6357
    6359
    6364
    6353
    6346
    6344
    6345
    6363
    6383
    6382
    6392
    6396
    6400
    6416
    6417
    6420
    6429
    6425
    6426
    6442
    6443
    6451
    6439
    6441
    6450
    6469
    6476
    6473
    6485
    6506
    6515
    6500
    6486
    6487
    6495
    6498
    6489
    6496
    6494
    6504
    6509
    6515
    6544
    6547
    6543
    6534
    6537
    6540
    6546
    6544
    6543
    6545
    6564
    6554
    6556
    6553
    6551
    6547
    6554
    6575
    6606
    6610
    6621
    6623
    6651
    6660
    6664
    6665
    6674
    6703
    6707
    6719
    6734
    6750
    6752
    6761
    6765
    6764
    6766
    6767
    6762
    6761
    6776
    6764
    6780
    6784
    6796
    6814
    6816
    6830
    6831
    6827
    6830
    6829
    6832
    6836
    6855
    6862
    6873
    6876
    6875
    6879
    6882
    6884
    6875
    6874
    6878
    6879
    6891
    6889
    6903
    6905
    6913
    6925
    6939
    6944
    6930
    6931
    6932
    6931
    6947
    6957
    6966
    6990
    7002
    7001
    7005
    7006
    7010
    7014
    7012
    7009
    7020
    7029
    7043
    7045
    7054
    7055
    7059
    7075
    7074
    7085
    7083
    7084
    7091
    7087
    7088
    7097
    7109
    7111
    7113
    7120
    7108
    7090
    7093
    7076
    7077
    7076
    7077
    7087
    7098
    7102
    7108
    7118
    7120
    7122
    7125
    7126
    7119
    7128
    7107
    7109
    7118
    7117
    7113
    7114
    7120
    7123
    7139
    7128
    7136
    7137
    7145
    7140
    7142
    7130
    7135
    7152
    7151
    7152
    7153
    7148
    7147
    7132
    7145
    7157
    7159
    7160
    7165
    7160
    7170
    7171
    7172
    7173
    7166
    7174
    7169
    7171
    7179
    7166
    7167
    7178
    7161
    7166
    7162
    7170
    7167
    7170
    7173
    7183
    7185
    7191
    7211
    7220
    7221
    7230
    7242
    7245
    7246
    7252
    7266
    7271
    7279
    7284
    7283
    7285
    7288
    7290
    7303
    7304
    7330
    7331
    7330
    7339
    7357
    7361
    7375
    7378
    7390
    7394
    7420
    7406
    7407
    7424
    7429
    7438
    7440
    7444
    7445
    7447
    7445
    7448
    7452
    7457
    7458
    7457
    7459
    7461
    7462
    7465
    7461
    7462
    7463
    7472
    7475
    7476
    7487
    7486
    7513
    7515
    7521
    7529
    7528
    7525
    7546
    7555
    7556
    7558
    7561
    7563
    7561
    7567
    7573
    7578
    7579
    7585
    7590
    7592
    7611
    7620
    7621
    7622
    7623
    7622
    7635
    7653
    7654
    7657
    7671
    7673
    7676
    7690
    7691
    7688
    7691
    7693
    7690
    7688
    7690
    7714
    7717
    7719
    7718
    7751
    7752
    7765
    7784
    7808
    7810
    7812
    7832
    7834
    7847
    7846
    7844
    7849
    7858
    7860
    7882
    7883
    7886
    7891
    7901
    7902
    7900
    7908
    7905
    7908
    7910
    7918
    7937
    7939
    7963
    7965
    7972
    7974
    7976
    7978
    7981
    7982
    7987
    7996
    8005
    8010
    8008
    8009
    8010
    8017
    8021
    8008
    8011
    8017
    8018
    7997
    7999
    8000
    8001
    8003
    8001
    8015
    8003
    7999
    8000
    8011
    8016
    8015
    8016
    8020
    8023
    8036
    8038
    8043
    8035
    8036
    8046
    8044
    8052
    8053
    8057
    8084
    8087
    8091
    8124
    8127
    8129
    8122
    8123
    8141
    8150
    8159
    8162
    8165
    8170
    8171
    8174
    8175
    8171
    8173
    8179
    8178
    8179
    8171
    8168
    8171
    8173
    8187
    8188
    8194
    8195
    8183
    8185
    8193
    8186
    8188
    8189
    8214
    8213
    8228
    8230
    8192
    8232
    8235
    8240
    8263
    8272
    8273
    8276
    8274
    8273
    8272
    8275
    8288
    8295
    8303
    8304
    8305
    8300
    8301
    8306
    8292
    8302
    8300
    8298
    8299
    8302
    8323
    8328
    8330
    8352
    8354
    8351
    8352
    8353
    8358
    8368
    8367
    8372
    8370
    8371
    8387
    8385
    8388
    8395
    8406
    8412
    8416
    8434
    8436
    8434
    8445
    8446
    8459
    8460
    8462
    8463
    8467
    8460
    8450
    8452
    8460
    8462
    8471
    8497
    8498
    8493
    8512
    8522
    8526
    8527
    8528
    8494
    8504
    8511
    8512
    8528
    8538
    8547
    8551
    8563
    8564"
    IO.inspect(DayOne.count_measurements(puzzle_input))
  end

  test "Grouping measurements" do
    test_input = "199
      200
      208
      210
      200
      207
      240
      269
      260
      263"
    assert 5 = DayOne.group_measurements(test_input)
  end

  test "Puzzle Input 2" do
    test_input = "124
125
127
128
132
140
142
103
102
110
101
107
109
113
119
120
122
124
125
121
119
139
159
164
165
177
190
181
182
171
192
185
184
186
183
203
204
209
210
214
215
213
235
257
271
278
279
284
286
289
290
287
291
297
287
290
273
280
284
288
289
294
310
324
319
320
324
325
327
328
326
328
300
301
302
306
308
315
349
364
365
367
369
376
384
386
378
382
396
427
435
434
437
424
432
443
453
451
453
440
446
447
448
449
454
462
463
448
447
448
460
468
469
470
473
479
480
481
488
498
499
502
504
510
513
507
506
504
507
518
520
519
515
520
536
534
535
537
554
555
556
558
554
566
558
542
545
552
556
563
550
559
560
561
562
563
559
562
564
565
578
580
587
571
579
586
602
614
618
630
632
624
628
637
639
645
648
654
655
664
673
674
677
709
710
712
706
710
713
701
705
707
708
711
713
714
713
716
721
756
747
757
764
763
762
766
801
798
804
798
788
785
787
788
832
834
835
834
844
851
854
867
878
893
899
900
901
910
912
916
917
912
938
933
935
960
955
958
969
970
975
977
978
1009
1007
1018
1019
1024
1027
1020
1033
1034
1025
1039
1040
1039
1041
1042
1043
1062
1064
1075
1080
1101
1100
1097
1117
1144
1145
1142
1141
1153
1163
1179
1184
1185
1195
1194
1203
1196
1201
1202
1226
1227
1230
1238
1242
1246
1247
1260
1263
1253
1247
1267
1268
1274
1258
1276
1277
1276
1272
1266
1272
1282
1301
1272
1275
1279
1280
1281
1293
1292
1295
1303
1334
1332
1326
1327
1311
1310
1311
1315
1317
1320
1317
1320
1324
1318
1314
1308
1304
1305
1321
1325
1327
1349
1352
1378
1399
1407
1408
1422
1423
1408
1411
1392
1395
1394
1396
1409
1424
1425
1431
1435
1451
1448
1461
1465
1466
1467
1470
1469
1476
1480
1479
1482
1483
1488
1526
1531
1552
1560
1577
1584
1581
1570
1568
1584
1594
1595
1604
1610
1615
1616
1648
1661
1684
1685
1686
1700
1712
1719
1684
1685
1678
1682
1693
1685
1687
1684
1709
1715
1719
1720
1726
1739
1750
1751
1754
1755
1754
1746
1766
1771
1774
1775
1776
1813
1814
1812
1811
1805
1803
1806
1800
1804
1801
1803
1810
1826
1825
1826
1837
1858
1865
1872
1862
1881
1894
1891
1907
1909
1901
1903
1904
1902
1903
1902
1924
1935
1932
1936
1938
1933
1941
1932
1933
1943
1959
1964
1967
1969
1967
1968
1967
1970
1965
1966
1968
1979
1982
1981
1991
1992
2016
2021
2026
2037
2045
2046
2050
2051
2049
2059
2062
2068
2064
2069
2071
2073
2088
2109
2090
2119
2132
2133
2139
2142
2161
2156
2174
2208
2209
2226
2228
2232
2242
2245
2223
2227
2222
2251
2266
2265
2261
2265
2287
2290
2292
2302
2304
2295
2296
2299
2300
2295
2294
2295
2311
2317
2322
2324
2325
2327
2315
2318
2323
2333
2334
2338
2340
2348
2349
2361
2362
2363
2364
2365
2373
2372
2369
2364
2374
2377
2401
2369
2377
2386
2385
2392
2395
2396
2416
2420
2411
2412
2428
2432
2446
2444
2446
2451
2453
2448
2452
2435
2441
2447
2448
2451
2455
2458
2465
2475
2486
2488
2492
2495
2461
2464
2467
2478
2486
2462
2464
2468
2501
2505
2506
2507
2516
2523
2526
2530
2529
2530
2538
2540
2546
2537
2545
2550
2551
2550
2552
2557
2561
2539
2554
2557
2550
2552
2559
2537
2557
2558
2563
2567
2560
2562
2573
2583
2588
2613
2612
2617
2620
2619
2624
2625
2626
2616
2618
2620
2625
2639
2654
2645
2648
2656
2652
2647
2659
2661
2659
2661
2662
2669
2650
2656
2659
2662
2668
2669
2673
2675
2708
2718
2734
2745
2743
2753
2767
2763
2749
2759
2760
2761
2754
2763
2764
2775
2776
2777
2778
2788
2793
2776
2779
2781
2779
2778
2779
2786
2820
2821
2824
2820
2813
2819
2824
2827
2832
2833
2866
2884
2892
2901
2917
2916
2927
2928
2939
2944
2945
2947
2953
2958
2963
2962
2969
2970
2971
2973
2975
2976
2979
2987
2984
2983
2987
2990
3004
3001
3004
2992
3000
3003
3005
3006
3005
3001
3009
3023
3037
3040
3043
3052
3053
3056
3077
3088
3108
3110
3111
3112
3114
3123
3120
3117
3119
3123
3122
3132
3129
3116
3117
3119
3121
3120
3123
3126
3156
3159
3162
3171
3176
3178
3179
3194
3199
3207
3211
3213
3225
3226
3233
3236
3240
3244
3249
3254
3257
3256
3260
3263
3268
3262
3247
3253
3267
3268
3269
3282
3272
3279
3280
3298
3300
3322
3305
3302
3318
3323
3337
3348
3355
3363
3365
3368
3369
3381
3385
3419
3421
3408
3426
3434
3450
3446
3451
3453
3452
3453
3456
3451
3442
3444
3469
3464
3454
3459
3456
3453
3456
3467
3471
3472
3466
3471
3484
3489
3512
3521
3523
3526
3531
3525
3526
3545
3554
3565
3566
3565
3576
3594
3595
3617
3612
3618
3619
3603
3627
3631
3627
3629
3628
3658
3689
3694
3696
3698
3700
3698
3696
3694
3691
3692
3694
3707
3706
3708
3709
3717
3718
3723
3735
3742
3744
3774
3793
3802
3803
3808
3807
3829
3821
3822
3829
3831
3844
3846
3847
3849
3856
3862
3879
3886
3893
3916
3917
3914
3913
3916
3909
3924
3922
3918
3921
3932
3934
3935
3934
3937
3953
3959
3977
3985
3982
3990
3991
3992
3993
4014
4001
4011
4029
4030
4040
4039
4041
4052
4068
4060
4061
4055
4054
4057
4061
4063
4077
4079
4105
4109
4111
4112
4116
4117
4120
4095
4106
4122
4152
4147
4161
4163
4164
4165
4180
4195
4207
4213
4220
4230
4234
4236
4260
4265
4282
4293
4302
4288
4304
4305
4323
4315
4309
4305
4304
4312
4319
4321
4336
4361
4360
4361
4362
4357
4358
4357
4358
4355
4354
4364
4369
4367
4386
4385
4369
4365
4357
4372
4391
4384
4383
4395
4406
4413
4395
4398
4424
4426
4435
4436
4443
4440
4432
4420
4422
4431
4443
4445
4449
4471
4473
4479
4481
4482
4480
4481
4512
4521
4540
4545
4547
4529
4534
4542
4543
4544
4551
4548
4549
4552
4553
4559
4549
4550
4563
4564
4568
4569
4571
4572
4573
4560
4587
4599
4600
4601
4602
4603
4643
4636
4635
4636
4634
4636
4646
4626
4630
4648
4649
4652
4653
4654
4656
4655
4662
4696
4699
4693
4697
4695
4694
4696
4703
4743
4745
4746
4752
4753
4766
4780
4781
4783
4784
4785
4764
4747
4746
4756
4772
4789
4807
4808
4810
4826
4831
4848
4854
4855
4854
4853
4856
4876
4917
4920
4921
4923
4930
4945
4948
4939
4940
4942
4941
4945
4946
4961
4988
4979
4990
4991
4992
4990
4954
4948
4954
4966
5009
5011
5014
5036
5038
5042
5039
5069
5076
5078
5104
5095
5121
5128
5122
5123
5124
5128
5132
5140
5164
5166
5175
5181
5173
5183
5188
5196
5205
5207
5208
5219
5221
5223
5222
5230
5231
5237
5238
5240
5248
5258
5259
5283
5286
5293
5313
5321
5308
5324
5325
5346
5357
5348
5361
5375
5379
5380
5383
5389
5386
5387
5390
5371
5379
5397
5403
5397
5399
5404
5432
5443
5449
5450
5449
5460
5465
5463
5465
5459
5470
5471
5472
5474
5475
5495
5496
5500
5506
5507
5506
5507
5506
5508
5527
5528
5536
5567
5592
5593
5597
5588
5598
5605
5614
5621
5622
5621
5622
5655
5656
5659
5663
5667
5666
5686
5693
5692
5689
5685
5686
5691
5692
5699
5700
5677
5681
5690
5701
5711
5712
5724
5723
5724
5725
5742
5743
5747
5764
5768
5777
5759
5741
5760
5761
5739
5741
5742
5753
5749
5750
5770
5780
5791
5805
5806
5807
5808
5813
5815
5818
5835
5843
5844
5853
5833
5835
5836
5842
5869
5881
5901
5903
5897
5905
5907
5908
5906
5938
5942
5943
5944
5950
5955
5963
5974
5981
5982
5983
5993
5998
6014
6036
6043
6047
6053
6070
6075
6081
6089
6093
6096
6101
6106
6109
6138
6126
6116
6122
6123
6102
6120
6119
6120
6121
6122
6127
6128
6121
6130
6154
6160
6159
6182
6188
6186
6184
6186
6187
6182
6184
6183
6178
6206
6203
6201
6213
6224
6226
6228
6237
6246
6247
6276
6280
6273
6271
6274
6273
6275
6269
6271
6269
6271
6283
6284
6290
6291
6305
6300
6302
6303
6322
6321
6330
6337
6325
6298
6299
6313
6314
6311
6310
6311
6314
6319
6320
6322
6314
6324
6336
6343
6345
6326
6332
6330
6312
6320
6318
6308
6309
6311
6313
6314
6309
6292
6293
6300
6306
6313
6314
6318
6319
6315
6314
6323
6327
6328
6325
6327
6347
6346
6355
6357
6358
6361
6376
6338
6343
6355
6357
6359
6364
6353
6346
6344
6345
6363
6383
6382
6392
6396
6400
6416
6417
6420
6429
6425
6426
6442
6443
6451
6439
6441
6450
6469
6476
6473
6485
6506
6515
6500
6486
6487
6495
6498
6489
6496
6494
6504
6509
6515
6544
6547
6543
6534
6537
6540
6546
6544
6543
6545
6564
6554
6556
6553
6551
6547
6554
6575
6606
6610
6621
6623
6651
6660
6664
6665
6674
6703
6707
6719
6734
6750
6752
6761
6765
6764
6766
6767
6762
6761
6776
6764
6780
6784
6796
6814
6816
6830
6831
6827
6830
6829
6832
6836
6855
6862
6873
6876
6875
6879
6882
6884
6875
6874
6878
6879
6891
6889
6903
6905
6913
6925
6939
6944
6930
6931
6932
6931
6947
6957
6966
6990
7002
7001
7005
7006
7010
7014
7012
7009
7020
7029
7043
7045
7054
7055
7059
7075
7074
7085
7083
7084
7091
7087
7088
7097
7109
7111
7113
7120
7108
7090
7093
7076
7077
7076
7077
7087
7098
7102
7108
7118
7120
7122
7125
7126
7119
7128
7107
7109
7118
7117
7113
7114
7120
7123
7139
7128
7136
7137
7145
7140
7142
7130
7135
7152
7151
7152
7153
7148
7147
7132
7145
7157
7159
7160
7165
7160
7170
7171
7172
7173
7166
7174
7169
7171
7179
7166
7167
7178
7161
7166
7162
7170
7167
7170
7173
7183
7185
7191
7211
7220
7221
7230
7242
7245
7246
7252
7266
7271
7279
7284
7283
7285
7288
7290
7303
7304
7330
7331
7330
7339
7357
7361
7375
7378
7390
7394
7420
7406
7407
7424
7429
7438
7440
7444
7445
7447
7445
7448
7452
7457
7458
7457
7459
7461
7462
7465
7461
7462
7463
7472
7475
7476
7487
7486
7513
7515
7521
7529
7528
7525
7546
7555
7556
7558
7561
7563
7561
7567
7573
7578
7579
7585
7590
7592
7611
7620
7621
7622
7623
7622
7635
7653
7654
7657
7671
7673
7676
7690
7691
7688
7691
7693
7690
7688
7690
7714
7717
7719
7718
7751
7752
7765
7784
7808
7810
7812
7832
7834
7847
7846
7844
7849
7858
7860
7882
7883
7886
7891
7901
7902
7900
7908
7905
7908
7910
7918
7937
7939
7963
7965
7972
7974
7976
7978
7981
7982
7987
7996
8005
8010
8008
8009
8010
8017
8021
8008
8011
8017
8018
7997
7999
8000
8001
8003
8001
8015
8003
7999
8000
8011
8016
8015
8016
8020
8023
8036
8038
8043
8035
8036
8046
8044
8052
8053
8057
8084
8087
8091
8124
8127
8129
8122
8123
8141
8150
8159
8162
8165
8170
8171
8174
8175
8171
8173
8179
8178
8179
8171
8168
8171
8173
8187
8188
8194
8195
8183
8185
8193
8186
8188
8189
8214
8213
8228
8230
8192
8232
8235
8240
8263
8272
8273
8276
8274
8273
8272
8275
8288
8295
8303
8304
8305
8300
8301
8306
8292
8302
8300
8298
8299
8302
8323
8328
8330
8352
8354
8351
8352
8353
8358
8368
8367
8372
8370
8371
8387
8385
8388
8395
8406
8412
8416
8434
8436
8434
8445
8446
8459
8460
8462
8463
8467
8460
8450
8452
8460
8462
8471
8497
8498
8493
8512
8522
8526
8527
8528
8494
8504
8511
8512
8528
8538
8547
8551
8563
8564"
    IO.inspect(DayOne.group_measurements(test_input))
  end
end
