# ロール権限の定義

ロールは権限を収集するため、ユーザーにロールが付与されると、ユーザーはすべてのロールの権限を継承します。

コントロールパネルで何かにアクセスする権限を持つロールを作成すると、 *コントロールパネルメニューの表示* 権限が自動的に付与されます。

Liferay DXP内でアクションを実行する権限を決定するには、反復が必要です。 1つまたは2つの権限を追加してから、ロールをテストして、表示される動作が期待どおりであることを確認します。 より多くのロールを作成するにつれて、特定のタスクを実行するために権限を組み合わせる方法をよりよく理解できます。

``` tip::
   ユーザーをロールに割り当て、その後、 `ユーザーを偽装 <./../users/adding-and-managing-users.md#impersonating-users>__する方法`は、ユーザーから継承した権限を確認する良い方法です。
```

Liferay DXPで任意のロールの権限を定義するには、

1.  コントロールパネルに移動し、[ *ユーザー* →[ *ロール*]をクリックします。

2.  通常、サイト、組織、アカウント、アセットライブラリのロールをまたは[新規作成](./creating-and-managing-roles.md)をクリックします。

3.  Role Editor画面から、 *Define Permissions* タブをクリックします。

4.  ロールの権限を収集し、[ *保存*]をクリックします。

![ロールの権限を定義して、そのユーザーがタスクを実行できるようにします。](./understanding-roles-and-permissions/images/04.png)

もちろん、作業の大部分は、ロールの権限を選択することです。 検索バーを使用して、必要な権限を見つけます。

``` note::
   コントロールパネルのRolesアプリケーションがメインですが、権限が構成されている唯一の場所ではありません。 リソースに対するロールの権限をより詳細なレベルで構成できます。 たとえば、[権限]メニューから特定のウィジェットの権限を構成できます。 コントロールパネルで付与または削除されたアクセス許可は、より詳細なレベルで定義されたアクセス許可を上書きします。
```

## 例：ユーザーグループマネージャーの定義

仮想インスタンスでユーザーグループを管理できる新しいロールを作成するには、割り当てられた [ロールのユーザー](./assigning-users-to-roles.md) が仮想インスタンスのすべてのユーザーグループに作用できるように、ユーザーグループマネージャーのロールの権限を定義する必要があります。

  - ユーザーを任意のユーザーグループに追加します。
  - ユーザーグループからユーザーを削除します。

タイトル *User Group Manager* 通常のロールが作成されたら、[権限の定義]画面に移動し、

1.  左側のメニューから *コントロールパネル* → *ユーザー* → *ユーザーグループ*にドリルダウンします。

    または、検索バーに *ユーザーグループ* と入力して、権限メニューをフィルタリングします。

    ![検索バーを使用して、関連する権限への権限のリストをフィルタリングします。](./defining-role-permissions/images/01.png)

2.  *一般的な権限*の見出しの下の、*コントロールパネルのアクセス*と*ビュー*をフラグします。 これにより、ユーザーグループ管理者はユーザーグループコントロールパネルポートレットにアクセスして、既存のユーザーグループを表示できます。

3.  ユーザーグループマネージャーがユーザーグループを表示し、メンバーを割り当てることができるようにしたいので、 *メンバーを割り当てる*と*表示*の権限を*リソース権限*→ *ユーザーグループ*見出しで確認します。

4.  *[保存]*をクリックします。

![ユーザーグループマネージャーのロールに割り当てられたユーザーは、使用可能なユーザーを任意のユーザーグループに追加したり、削除したりできます。](./defining-role-permissions/images/02.png)

これで、ユーザーグループマネージャーのロールには、ユーザーをユーザーグループに追加するために必要なすべての権限が付与されます。 ユーザーグループマネージャーは、コントロールパネルでユーザーグループの表示、メンバーの割り当て、ユーザーグループへのアクセスを行うことができます。 ユーザーを表示してロールのメンバーとして割り当てる必要があるため、コントロールパネルでユーザーを表示する権限が必要でした。 この権限がない場合、ユーザーをロールに追加しようとすると、ユーザーグループのマネージャーには空のリストが表示されます。

## 権限の概要

権限には次の3つのカテゴリがあります。

**コントロールパネル**: ポータル管理者は、コントロールパネル全体にアクセスできます。 コントロールパネルのアクセス許可は、コントロールパネルがさまざまなロールユーザーに表示されるかどうか、およびどのように表示されるかに影響します。 たとえば、ロールがコントロールパネルのさまざまなアプリケーションへの表示アクセスを許可するかどうかを微調整したり、より細かくしてアプリケーションの構成アクションへのアクセスのみを許可したりできます。

**サイトとアセットライブラリの管理**： サイト管理者は、サイト管理カテゴリに属するサイト管理ツールにアクセスできます。 サイトとアセットライブラリの管理→アプリケーションカテゴリの権限は、Wikiやメッセージボードなどのアプリケーションで作成できるコンテンツを管理します。 このリストからいずれかのアプリケーションを選択すると、そのコンテンツに対する権限を定義するためのオプションが表示されます。 たとえば、メッセージボードを選択すると、カテゴリとスレッドの作成、またはトピックの削除と移動の権限が表示されます。

サイトアプリケーションの権限は、ロールのスコープ全体（たとえば、通常のロールの仮想インスタンス内のすべてのサイト）全体でアプリケーションに影響します。 たとえば、メッセージボードウィジェットを組織ロールのページに追加する権限をメッセージボードアプリケーションに付与すると、このロールを持つ組織ユーザーは、 [組織](../organizations/understanding-organizations.md)が所有するサイトの任意のページでアクションを実行できます。

**ユーザー：** デフォルトでは、ユーザーはユーザーロールを継承し、ユーザーカテゴリに属する権限を介してユーザーアカウントを管理できます。 これらの権限を使用して、ユーザーの新しいロールを定義し、ユーザーのアカウントにデフォルトのユーザーロールよりも少ない権限を提供できます。 次に、 [Default Associations](./assigning-users-to-roles.md#default-user-associations) 構成を使用して、元のユーザーロールをより制限的なロール（おそらく、 *制限ユーザー* または *カスタムユーザー* と名付けてそれを区別するロール）に置き換えることができます。

自分を1つのカテゴリに限定しないでください。カスタムのロールを定義するときに、これらすべてのカテゴリの権限を混在させて一致させることができます。

``` tip::
   権限の範囲を変更できます。権限の表の[* Scope *]列にある[* Change *]リンクをクリックして、新しい範囲を選択します。 [*保存*]をクリックして、現在ロールに付与されているすべての権限とそのスコープのリストを表示します。 概要ビューから、*戻る*（<）アイコンをクリックして、権限を追加したり、ロールアプリケーションのデフォルトビューに戻ることができます。
```

![権限のスコープを変更することで、ロールの権限を微調整できます。](./defining-role-permissions/images/03.png)

特定のアクセス許可によって、期待した以上のアクセスが許可されることがあります---常にアクセス許可の構成をテストしてください\！

## 社会活動構成の委任

サイト管理者がソーシャルアクティビティを構成する責任を他のユーザーに委任できる権限があります。 この権限をロールに追加するには、目的のロールの横にある[ *Actions* ]をクリックし、[ *Define Permissions*を選択します。 *サイト管理* → *構成* → *ソーシャルアクティビティ* 権限カテゴリを見つけます。 すべての権限にフラグを付けて、* [保存]*クリックします。

  - サイト管理でのアクセス
  - 設定
  - 権限
  - 基本設定
  - View

これらの権限が付与されると、ロール担当者はサイトのソーシャルアクティビティを管理できます。

ロールは、さまざまな権限を任意の組み合わせでグループ化します。 これにより、設計したサイトを構築するための柔軟性が最大限に高まります。