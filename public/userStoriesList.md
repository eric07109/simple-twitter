-v 除了註冊和登入頁，使用者一定要登入才能使用網站
-v 使用者能創建帳號、登入、登出
-v 除了信箱和密碼，使用者在註冊時還能設定自己的名稱
-v 使用者的名稱不能重覆，若有重覆會跳出錯誤
    + 讓錯誤訊息變成flash error message (https://stackoverflow.com/questions/28963891/replace-devise-error-messages-with-flash-messages)
-v 使用者能編輯自己的名稱、介紹和大頭照
-v 使用者能瀏覽所有的推播 (tweet)
-v 使用者能在首頁看見跟隨者 (followers) 數量排列前 10 的使用者推薦名單
-v 點擊其他使用者的名稱時，能瀏覽該使用者的個人資料及推播
-v 使用者能新增推播（限制在 140 字裡）
-v 使用者能回覆別人的推播
    + tweet reply order by created_at 
-v 使用者可以追蹤/取消追蹤其他使用者（不能追蹤自己）
-v 使用者能對別人的推播按 Like/Unlike
-v 任何登入使用者都可以瀏覽特定使用者的以下資料：
    -v Tweets：排序依日期，最新的在前
    -v Following：該使用者的關注清單，排序依照追蹤紀錄成立的時間，愈新的在愈前面
    -v Follower：該使用者的跟隨者清單，排序依照追蹤紀錄成立的時間，愈新的在愈前面
    -v Like：該使用者 like 過的推播清單，排序依 like 紀錄成立的時間，愈新的在愈前面
-v 管理者登入網站後，能夠進入後台頁面 
-v 管理者可以瀏覽所有的推播與推播回覆內容
-v 管理者可以刪除使用者的推播
-v 管理者可以瀏覽站內所有的使用者清單
-v 該清單會列出他們的活躍程度（包括推播數量、關注人數、跟隨者人數、推播被 like 的數量）
-v 管理者可以瀏覽站內所有的使用者清單，該清單按推播文數排序


