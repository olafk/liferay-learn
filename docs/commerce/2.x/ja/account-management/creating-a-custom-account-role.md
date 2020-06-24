# カスタムアカウントロールの作成

Liferay Commerceは、デフォルトでアカウント管理者、バイヤー、オーダーマネージャー、セールスエージェントの4つのアカウントロールを提供します。 一般的な役割の詳細は、[アカウント](./account-roles.md)の役割を参照してください。 加えて、[ Commerce Roles Permissions Reference](./commerce-roles-permissions-reference.md)を参照してください。各ロールに関連付けられた許可キーを見つけます。 ストア管理者が特定のニーズに十分な既存の役割がないと判断した場合、管理者は新しい役割を作成できます。 いつものように、ストア管理者は各アカウントロールにアクセス許可を追加できます。

新しいCommerceアカウントロールを追加するには：

1.  *コントロールパネル* → *ユーザー* → *の役割*へ移動します。

2.  *Site Roles* タブをクリックします。

3.  *サイトロールの追加*ボタンをクリックします。

4.  次のように入力します：

      - **名前** ： 顧客サービス担当者

5.  *[Save]*をクリックします。

6.  *権限を定義*をクリックします 。

7.  *サイト管理*をクリックしてドロップダウンメニューを展開します。

    ![空白のコマースアカウントロール](./creating-a-custom-account-role/images/02.png)

      - コマース固有の許可キーは、2つの異なる場所にあります。 * Commerce *サブメニューには、次のコマースウィジェットの権限キーが一覧表示されます。
          - ほしい物リスト
          - 設定
      - 次のCommerceウィジェットの許可キーは、*アプリケーション*サブメニューにあります。
          - アカウント
          - カート
          - カートの中身
          - チェックアウト
          - 商業用住所
          - Commerce BOM
          - コマースカテゴリナビゲーション
          - クーポンコードの入力
          - ダッシュボード予測チャート
          - ミニカート
          - カートを見る
          - オプション ファセット
          - 注文
          - 配送
          - 仕様ファセット
          - ほしい物リストの内容
          - ほしい物リスト

8.  *サイト管理*からコマース許可を選択します 。

    ![新しいカスタムロール権限](./creating-a-custom-account-role/images/03.png)

9.  [保存]をクリックします。

新しい役割が作成されると、コントロールパネルの*サイトのロール*と*アカウント管理*ウィジェットにリストされます。

![新しいカスタムロール](./creating-a-custom-account-role/images/01.png)

## 追加情報

  - [ロールとパーミッション](https://help.liferay.com/hc/articles/360017895212-Roles-and-Permissions)