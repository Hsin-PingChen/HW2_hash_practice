def count_words(file_path):
    # 初始化一個空字典來儲存單字計數
    word_count = {}
    total_words = 0
    
    try:
        # 開啟檔案並逐行讀取
        with open(file_path, 'r') as file:
            for line in file:
                # 去除行尾的換行符號並轉為小寫（如果需區分大小寫則移除lower()）
                word = line.strip().lower()
                total_words += 1
                
                # 更新字典中的計數
                if word in word_count:
                    word_count[word] += 1
                else:
                    word_count[word] = 1
                    
        # 計算不重複的單字數量
        unique_words = len(word_count)
        
        # 輸出結果
        print(f"1. 總共有 {unique_words} 個不重複的英文字")
        print("\n2. 每一個英文字出現次數：")
        for word, count in sorted(word_count.items()):
            print(f"{word}: {count}")
            
        print(f"\n總共處理了 {total_words} 個單字")
        
    except FileNotFoundError:
        print(f"錯誤：找不到檔案 {file_path}")
    except Exception as e:
        print(f"發生錯誤：{e}")

# 指定檔案路徑
file_path = "hw2_data.txt"

# 呼叫函式進行統計
count_words(file_path)