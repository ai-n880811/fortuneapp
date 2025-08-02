//占い結果を保持するJavaBeanクラス。
//運勢の種類（大吉など）、メッセージ、表示用の色をまとめて管理する。
//主にサーブレットからJSPへ占い結果を渡すための入れ物として使用する。

package Bean;

public class Fortune {
	//運勢の種類（大吉、中吉など）
    private String result;
    
    //運勢に対応したメッセージ
    private String message;
    
    //表示用の文字色
	private String color;

	// コンストラクタで受け取った値を各フィールドにセットする
    public Fortune(String result, String message, String color) {
        this.result = result;
        this.message = message;
        this.color = color;
    }

    //運勢の種類を取得
    public String getResult() {
        return result;
    }

    //運勢に対応したメッセージを取得
    public String getMessage() {
        return message;
    }
    
    //表示用の色を取得
    public String getColor() {
    	return color; 
    }
}
