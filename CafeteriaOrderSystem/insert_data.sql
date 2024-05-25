INSERT INTO User (id, name, Gender, age, nationality, ethnic_group, Role, wallet)
VALUES 
-- Han Ethnic Group (14 students)
(100001, '李明', 'Male', 20, 'Chinese', 'Han', 'Student', 100.00),
(100002, '王芳', 'Female', 21, 'Chinese', 'Han', 'Student', 50.00),
(100003, '张伟', 'Male', 22, 'Chinese', 'Han', 'Student', 75.00),
(100004, '刘洋', 'Female', 20, 'Chinese', 'Han', 'Student', 60.00),
(100005, '陈磊', 'Male', 23, 'Chinese', 'Han', 'Student', 85.00),
(100006, '赵娜', 'Female', 21, 'Chinese', 'Han', 'Student', 90.00),
(100007, '黄强', 'Male', 24, 'Chinese', 'Han', 'Student', 95.00),
(100008, '周静', 'Female', 22, 'Chinese', 'Han', 'Student', 80.00),
(100009, '吴杰', 'Male', 23, 'Chinese', 'Han', 'Student', 70.00),
(100010, '徐丽', 'Female', 20, 'Chinese', 'Han', 'Student', 65.00),
(100011, '孙鹏', 'Male', 21, 'Chinese', 'Han', 'Student', 55.00),
(100012, '胡燕', 'Female', 22, 'Chinese', 'Han', 'Student', 75.00),
(100013, '高飞', 'Male', 23, 'Chinese', 'Han', 'Student', 80.00),
(100014, '林梅', 'Female', 20, 'Chinese', 'Han', 'Student', 60.00),

-- Foreign Students (10 students)
-- USA
(100015, 'John Smith', 'Male', 24, 'American', 'Caucasian', 'Student', 90.00),
(100016, 'Emily Davis', 'Female', 21, 'American', 'Caucasian', 'Student', 85.00),
(100017, 'Michael Johnson', 'Male', 22, 'American', 'Caucasian', 'Student', 75.00),

-- India
(100018, 'Ravi Kumar', 'Male', 20, 'Indian', 'Indian', 'Student', 65.00),
(100019, 'Priya Singh', 'Female', 23, 'Indian', 'Indian', 'Student', 85.00),
(100020, 'Amit Patel', 'Male', 21, 'Indian', 'Indian', 'Student', 70.00),

-- Germany
(100021, 'Hans Müller', 'Male', 24, 'German', 'Caucasian', 'Student', 95.00),
(100022, 'Anna Schmidt', 'Female', 22, 'German', 'Caucasian', 'Student', 75.00),
(100023, 'Karl Weber', 'Male', 23, 'German', 'Caucasian', 'Student', 80.00),
(100024, 'Julia Fischer', 'Female', 20, 'German', 'Caucasian', 'Student', 60.00),

-- Minor Ethnic Groups (16 students)
-- Zhuang Ethnic Group
(100025, '唐磊', 'Male', 24, 'Chinese', 'Zhuang', 'Student', 90.00),
(100026, '薛燕', 'Female', 21, 'Chinese', 'Zhuang', 'Student', 85.00),
(100027, '闫杰', 'Male', 22, 'Chinese', 'Zhuang', 'Student', 75.00),
(100028, '雷丽', 'Female', 20, 'Chinese', 'Zhuang', 'Student', 65.00),

-- Hui Ethnic Group
(100029, '裴鹏', 'Male', 23, 'Chinese', 'Hui', 'Student', 85.00),
(100030, '沈静', 'Female', 21, 'Chinese', 'Hui', 'Student', 70.00),
(100031, '范伟', 'Male', 24, 'Chinese', 'Hui', 'Student', 95.00),
(100032, '彭雪', 'Female', 22, 'Chinese', 'Hui', 'Student', 75.00),

-- Manchu Ethnic Group
(100033, '杜涛', 'Male', 23, 'Chinese', 'Manchu', 'Student', 80.00),
(100034, '贺芳', 'Female', 20, 'Chinese', 'Manchu', 'Student', 60.00),
(100035, '魏磊', 'Male', 24, 'Chinese', 'Manchu', 'Student', 90.00),
(100036, '陶燕', 'Female', 21, 'Chinese', 'Manchu', 'Student', 85.00),

-- Miao Ethnic Group
(100037, '江杰', 'Male', 22, 'Chinese', 'Miao', 'Student', 75.00),
(100038, '邵丽', 'Female', 20, 'Chinese', 'Miao', 'Student', 65.00),

-- Uyghur Ethnic Group
(100039, '董鹏', 'Male', 23, 'Chinese', 'Uyghur', 'Student', 85.00),
(100040, '侯静', 'Female', 21, 'Chinese', 'Uyghur', 'Student', 70.00);

INSERT INTO User (ID, Name, Gender, age, nationality, ethnic_group, Role, wallet)
VALUES 
(200001, '陈刚', 'Male', 35, 'Chinese', 'Han', 'Staff', 500.00),
(200002, '刘敏', 'Female', 29, 'Chinese', 'Han', 'Staff', 450.00),
(200003, '张丽', 'Female', 42, 'Chinese', 'Han', 'Staff', 600.00),
(200004, '王伟', 'Male', 38, 'Chinese', 'Han', 'Staff', 550.00),
(200005, '赵强', 'Male', 45, 'Chinese', 'Han', 'Staff', 700.00),
(200006, '李静', 'Female', 33, 'Chinese', 'Han', 'Staff', 480.00),
(200007, '孙磊', 'Male', 31, 'Chinese', 'Han', 'Staff', 520.00),
(200008, '周娜', 'Female', 40, 'Chinese', 'Han', 'Staff', 650.00),
(200009, '吴军', 'Male', 36, 'Chinese', 'Han', 'Staff', 570.00),
(200010, '徐芳', 'Female', 28, 'Chinese', 'Han', 'Staff', 430.00);


INSERT INTO Merchant (ID, Name, address, rating, favorite_count)
VALUES 
(300001, '金鼎轩', 'Canteen Area 1', NULL, NULL),
(300002, '海底捞', 'Canteen Area 2', NULL, NULL),
(300003, '小南国', 'Canteen Area 3', NULL, NULL),
(300004, '俏江南', 'Canteen Area 4', NULL, NULL),
(300005, '大董烤鸭', 'Canteen Area 5', NULL, NULL),
(300006, '全聚德', 'Canteen Area 6', NULL, NULL),
(300007, '绿茶餐厅', 'Canteen Area 7', NULL, NULL),
(300008, '外婆家', 'Canteen Area 8', NULL, NULL),
(300009, '眉州东坡', 'Canteen Area 9', NULL, NULL),
(300010, '小肥羊', 'Canteen Area 10', NULL, NULL);

-- Dishes for 金鼎轩
INSERT INTO Dish (ID, Name, Price, Category, Description, Image, MerchantID, ingredients, nutrition_info, allergens, user_rating, review, is_special, favorite_count)
VALUES
(400001, '招牌小笼包', 28.00, 'Snack', '经典美味', 'zhaopaixiaolongbao.jpg', 300001, '面粉, 猪肉', '400kcal', '面粉', NULL, NULL, false, NULL),
(400002, '鲜虾烧卖', 32.00, 'Snack', '鲜美虾肉', 'xianxiashaomai.jpg', 300001, '面粉, 虾仁', '450kcal', '面粉, 虾', NULL, NULL, true, NULL),
(400003, '麻婆豆腐', 30.00, 'Main Course', '麻辣鲜香', 'mapodoufu.jpg', 300001, '豆腐, 辣椒', '420kcal', '无', NULL, NULL, false, NULL),
(400004, '粤式烧鸭', 28.00, 'Main Course', '香嫩多汁', 'yueshiya.jpg', 300001, '鸭肉, 酱料', '400kcal', '无', NULL, NULL, true, NULL),
(400005, '叉烧包', 35.00, 'Snack', '香甜叉烧', 'chashaobao.jpg', 300001, '面粉, 叉烧', '480kcal', '面粉', NULL, NULL, false, NULL);

-- Dishes for 海底捞
INSERT INTO Dish (ID, Name, Price, Category, Description, Image, MerchantID, ingredients, nutrition_info, allergens, user_rating, review, is_special, favorite_count)
VALUES
(400006, '牛肉丸', 22.00, 'Main Course', '经典牛肉味', 'niurouwan.jpg', 300002, '牛肉, 香料', '380kcal', '无', NULL, NULL, true, NULL),
(400007, '鱼豆腐', 20.00, 'Main Course', '鲜美豆腐', 'yudoufu.jpg', 300002, '鱼肉, 豆腐', '360kcal', '鱼', NULL, NULL, false, NULL),
(400008, '虾滑', 24.00, 'Main Course', '滑嫩虾肉', 'xiahuan.jpg', 300002, '虾仁, 调料', '400kcal', '虾', NULL, NULL, true, NULL),
(400009, '脆皮肠', 18.00, 'Main Course', '香脆可口', 'cuipichang.jpg', 300002, '猪肉, 肠衣', '340kcal', '无', NULL, NULL, false, NULL),
(400010, '金针菇', 20.00, 'Main Course', '爽口金针菇', 'jinzhengu.jpg', 300002, '金针菇', '360kcal', '无', NULL, NULL, true, NULL);

-- Dishes for 小南国
INSERT INTO Dish (ID, Name, Price, Category, Description, Image, MerchantID, ingredients, nutrition_info, allergens, user_rating, review, is_special, favorite_count)
VALUES
(400011, '生煎包', 18.00, 'Snack', '外脆内嫩', 'shengjianbao.jpg', 300003, '面粉, 猪肉', '250kcal', '面粉', NULL, NULL, true, NULL),
(400012, '韭菜盒子', 15.00, 'Snack', '鲜美韭菜', 'jiucaihezi.jpg', 300003, '面粉, 韭菜', '220kcal', '面粉', NULL, NULL, false, NULL),
(400013, '小笼汤包', 20.00, 'Snack', '汤汁丰富', 'xiaolongtangbao.jpg', 300003, '面粉, 猪肉', '260kcal', '面粉', NULL, NULL, true, NULL),
(400014, '红烧狮子头', 28.00, 'Main Course', '香嫩多汁', 'hongshaoshizitou.jpg', 300003, '猪肉, 马蹄, 青菜', '550kcal', '无', NULL, NULL, true, NULL),
(400015, '炒三鲜', 30.00, 'Main Course', '鲜香可口', 'chaosanxian.jpg', 300003, '虾仁, 鱿鱼, 青菜', '380kcal', '虾, 鱿鱼', NULL, NULL, false, NULL);

-- Dishes for 俏江南
INSERT INTO Dish (ID, Name, Price, Category, Description, Image, MerchantID, ingredients, nutrition_info, allergens, user_rating, review, is_special, favorite_count)
VALUES
(400016, '红烧肉', 40.00, 'Main Course', '肥而不腻', 'hongshaorou.jpg', 300004, '五花肉, 酱油, 冰糖', '600kcal', '无', NULL, NULL, true, NULL),
(400017, '麻辣火锅', 50.00, 'Main Course', '香辣鲜美', 'malahuoguo.jpg', 300004, '牛肉, 辣椒', '700kcal', '辣椒', NULL, NULL, false, NULL),
(400018, '水煮鱼', 45.00, 'Main Course', '麻辣鲜香', 'shuizhuyu.jpg', 300004, '鱼片, 辣椒', '500kcal', '鱼', NULL, NULL, true, NULL),
(400019, '酸辣土豆丝', 20.00, 'Side Dish', '酸辣开胃', 'suanlatudousi.jpg', 300004, '土豆, 辣椒', '200kcal', '无', NULL, NULL, false, NULL),
(400020, '宫保鸡丁', 35.00, 'Main Course', '香辣可口', 'gongbaojiding.jpg', 300004, '鸡肉, 花生', '400kcal', '花生', NULL, NULL, true, NULL);

-- Dishes for 大董烤鸭
INSERT INTO Dish (ID, Name, Price, Category, Description, Image, MerchantID, ingredients, nutrition_info, allergens, user_rating, review, is_special, favorite_count)
VALUES
(400021, '北京烤鸭', 68.00, 'Main Course', '外酥里嫩', 'beijingkaoya.jpg', 300005, '鸭肉, 酱料', '800kcal', '无', NULL, NULL, true, NULL),
(400022, '鸭汤面', 28.00, 'Main Course', '浓郁鲜美', 'yatangmian.jpg', 300005, '面条, 鸭肉', '400kcal', '面粉', NULL, NULL, false, NULL),
(400023, '酥皮鸭', 45.00, 'Main Course', '外酥里嫩', 'supiya.jpg', 300005, '鸭肉, 酥皮', '600kcal', '无', NULL, NULL, true, NULL),
(400024, '梅菜扣肉', 35.00, 'Main Course', '咸香入味', 'meicaikourou.jpg', 300005, '五花肉, 梅菜', '550kcal', '无', NULL, NULL, false, NULL),
(400025, '鸭舌头', 30.00, 'Appetizer', '香辣下酒', 'yashetou.jpg', 300005, '鸭舌, 辣椒', '300kcal', '无', NULL, NULL, true, NULL);

-- Dishes for 全聚德
INSERT INTO Dish (ID, Name, Price, Category, Description, Image, MerchantID, ingredients, nutrition_info, allergens, user_rating, review, is_special, favorite_count)
VALUES
(400026, '宫廷烤鸭', 78.00, 'Main Course', '宫廷美味', 'gongtingkaoya.jpg', 300006, '鸭肉, 酱料', '850kcal', '无', NULL, NULL, true, NULL),
(400027, '鸭肉粥', 25.00, 'Main Course', '香浓细腻', 'yarouzhou.jpg', 300006, '大米, 鸭肉', '350kcal', '无', NULL, NULL, false, NULL),
(400028, '烤鸭卷', 30.00, 'Snack', '香脆美味', 'kaoyajuan.jpg', 300006, '面粉, 鸭肉', '400kcal', '面粉', NULL, NULL, true, NULL
(400029, '烤鸭包', 28.00, 'Snack', '外脆内嫩', 'kaoyabao.jpg', 300006, '面粉, 鸭肉', '450kcal', '面粉', NULL, NULL, false, NULL),
(400030, '鸭血粉丝汤', 22.00, 'Main Course', '浓郁鲜美', 'yaxuefensitang.jpg', 300006, '鸭血, 粉丝', '300kcal', '无', NULL, NULL, true, NULL);

-- Dishes for 绿茶餐厅
INSERT INTO Dish (ID, Name, Price, Category, Description, Image, MerchantID, ingredients, nutrition_info, allergens, user_rating, review, is_special, favorite_count)
VALUES
(400031, '绿茶蛋糕', 20.00, 'Dessert', '香甜可口', 'lvchadangao.jpg', 300007, '面粉, 绿茶粉', '300kcal', '面粉', NULL, NULL, true, NULL),
(400032, '龙井虾仁', 35.00, 'Main Course', '鲜美虾仁', 'longjingxiaren.jpg', 300007, '虾仁, 龙井茶', '380kcal', '虾', NULL, NULL, false, NULL),
(400033, '清蒸鲈鱼', 45.00, 'Main Course', '鲜嫩多汁', 'qingzhengluoyu.jpg', 300007, '鲈鱼, 姜葱', '400kcal', '鱼', NULL, NULL, true, NULL),
(400034, '西湖牛肉羹', 28.00, 'Soup', '鲜美牛肉', 'xihuniurougeng.jpg', 300007, '牛肉, 鸡蛋', '320kcal', '鸡蛋', NULL, NULL, true, NULL),
(400035, '麻酱拌面', 18.00, 'Main Course', '香浓麻酱', 'majiangbanmian.jpg', 300007, '面条, 麻酱', '450kcal', '面粉', NULL, NULL, false, NULL);

-- Dishes for 外婆家
INSERT INTO Dish (ID, Name, Price, Category, Description, Image, MerchantID, ingredients, nutrition_info, allergens, user_rating, review, is_special, favorite_count)
VALUES
(400036, '外婆红烧肉', 32.00, 'Main Course', '肥而不腻', 'waipo_hongshaorou.jpg', 300008, '五花肉, 酱油, 冰糖', '600kcal', '无', NULL, NULL, true, NULL),
(400037, '外婆葱油饼', 15.00, 'Snack', '香脆可口', 'waipo_congyoubing.jpg', 300008, '面粉, 葱', '300kcal', '面粉', NULL, NULL, false, NULL),
(400038, '外婆炖鸡', 28.00, 'Main Course', '香浓入味', 'waipo_dunji.jpg', 300008, '鸡肉, 香料', '550kcal', '无', NULL, NULL, true, NULL),
(400039, '外婆黄焖鸡', 35.00, 'Main Course', '鲜香浓郁', 'waipo_huangmenji.jpg', 300008, '鸡肉, 土豆', '480kcal', '无', NULL, NULL, true, NULL),
(400040, '外婆牛肉面', 22.00, 'Main Course', '牛肉味浓', 'waipo_niuroumian.jpg', 300008, '面条, 牛肉', '450kcal', '面粉', NULL, NULL, false, NULL);

-- Dishes for 眉州东坡
INSERT INTO Dish (ID, Name, Price, Category, Description, Image, MerchantID, ingredients, nutrition_info, allergens, user_rating, review, is_special, favorite_count)
VALUES
(400041, '东坡肉', 45.00, 'Main Course', '香浓入味', 'dongporou.jpg', 300009, '五花肉, 酱油, 冰糖', '650kcal', '无', NULL, NULL, true, NULL),
(400042, '红油抄手', 20.00, 'Snack', '麻辣鲜香', 'hongyuchaoshou.jpg', 300009, '面粉, 猪肉', '350kcal', '面粉', NULL, NULL, false, NULL),
(400043, '麻婆豆腐', 25.00, 'Main Course', '麻辣鲜香', 'mapodoufu.jpg', 300009, '豆腐, 辣椒', '420kcal', '无', NULL, NULL, true, NULL),
(400044, '东坡黄鳝', 50.00, 'Main Course', '鲜香滑嫩', 'dongpohuanshan.jpg', 300009, '黄鳝, 姜葱', '400kcal', '鱼', NULL, NULL, false, NULL),
(400045, '酸辣土豆丝', 18.00, 'Side Dish', '酸辣开胃', 'suanlatudousi.jpg', 300009, '土豆, 辣椒', '200kcal', '无', NULL, NULL, true, NULL);

-- Dishes for 小肥羊
INSERT INTO Dish (ID, Name, Price, Category, Description, Image, MerchantID, ingredients, nutrition_info, allergens, user_rating, review, is_special, favorite_count)
VALUES
(400046, '小肥羊羊肉卷', 48.00, 'Main Course', '鲜嫩多汁', 'xiaofeiyangyangroujuan.jpg', 300010, '羊肉, 酱料', '700kcal', '无', NULL, NULL, true, NULL),
(400047, '小肥羊豆腐', 22.00, 'Side Dish', '嫩滑豆腐', 'xiaofeiyangdoufu.jpg', 300010, '豆腐, 酱料', '350kcal', '无', NULL, NULL, false, NULL),
(400048, '小肥羊金针菇', 28.00, 'Side Dish', '爽口金针菇', 'xiaofeiyangjinzhengu.jpg', 300010, '金针菇', '200kcal', '无', NULL, NULL, true, NULL),
(400049, '小肥羊羊肉汤', 38.00, 'Main Course', '鲜美羊肉汤', 'xiaofeiyangyangroutang.jpg', 300010, '羊肉, 高汤', '600kcal', '无', NULL, NULL, true, NULL),
(400050, '小肥羊肥牛', 45.00, 'Main Course', '鲜嫩肥牛', 'xiaofeiyangfeiniu.jpg', 300010, '肥牛, 酱料', '750kcal', '无', NULL, NULL, false, NULL);
