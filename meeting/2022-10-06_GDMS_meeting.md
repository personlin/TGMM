# 2022-10-06 會議記錄

2022-10-06 10:30~12:00 @NCREE R805

## 出席人員

林柏伸 Po-Shen Lin,  
林哲民 Che-Min Lin,  
許喬筑 Chiao-Chu Hsu,  
陳俊德 Chun-Te Chen,  
黃雋彥 Jyun_Yan Huang,  
趙書賢 Shu-Hsien Chao,  
謝寶珊 Pao-Shan Hsieh,  
顏銀桐 Yin-Tung Yen

## 討論內容

- 是否使用氣象局地震目錄pfile ID作為地震的ID？
    - 缺點：需要等氣象局的地震目錄確定之後才能取得
    - 採用氣象局地震彙整網頁的資料會遇到更新的問題，同一地震的ID會變動
    
- 非即時的TSMIP測站資料該如何取得？
- 即時TSMIP測站波形資料如何建立處理流程？
    - 如何進行波形裁切
        - Auto picking?
            - STA/LTA ratio
            - Machine Learning?
        - Hand picking?
            - 軟體？流程？
    - 檔案格式轉換，3欄(NS, EW, UP) ASCII格式？
    - 是否保留mseed格式，還是轉換為ASCII格式，與之前CWB TSMIP格式相同？
    - 濾波、基線校正、反應譜加速度計算、RotD50計算

## 結論與行動

- 俊德提供理論到時fortran code讓柏伸整合到R
- 柏伸提供R下載GDMS的code給喬筑
- 約張建興了解過去氣象局強震資料處理流程
- 未來以氣象局有地震編號的地震事件優先進行處理，地震ID=年份+地震編號
- 波形資料輸出保留氣象局ASCII格式方式
- 先以9/18地震事件測試處理流程
