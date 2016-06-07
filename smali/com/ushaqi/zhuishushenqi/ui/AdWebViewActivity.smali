.class public Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Ljava/lang/String;

.field private g:Landroid/app/DownloadManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->g:Landroid/app/DownloadManager;

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;)Landroid/app/DownloadManager;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->g:Landroid/app/DownloadManager;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "extra_title"

    .line 54
    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "extra_url"

    invoke-virtual {v0, v1, p2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 39
    .line 1210
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 1211
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->g:Landroid/app/DownloadManager;

    invoke-virtual {v2, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 1212
    if-eqz v0, :cond_3

    .line 1213
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1214
    const-string v2, "uri"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1215
    const-string v3, "status"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1216
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eq v3, v1, :cond_1

    const/4 v2, 0x2

    if-ne v3, v2, :cond_0

    :cond_1
    move v0, v1

    .line 1198
    :goto_0
    if-nez v0, :cond_5

    .line 1244
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1248
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->r(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 1249
    const-string v0, "\u54c7\uff0c\u4f60\u6b63\u5904\u5728 Wi-Fi \u7f51\u7edc\u4e0b\uff0c\u4e0b\u8f7d\u65e0\u9700\u6d41\u91cf :)"

    .line 1253
    :goto_1
    new-instance v1, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v1, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    const v2, 0x7f050103

    invoke-virtual {v1, v2}, Luk/me/lewisdeane/ldialogs/h;->a(I)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v1

    .line 2046
    iput-object v0, v1, Luk/me/lewisdeane/ldialogs/h;->e:Ljava/lang/String;

    .line 1253
    const v0, 0x7f050138

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/e;

    invoke-direct {v2, p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/e;-><init>(Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;Ljava/lang/String;)V

    .line 1254
    invoke-virtual {v1, v0, v2}, Luk/me/lewisdeane/ldialogs/h;->a(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const v1, 0x7f050011

    const/4 v2, 0x0

    .line 1262
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->b(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    .line 1263
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->b()Landroid/app/AlertDialog;

    .line 1199
    :cond_2
    :goto_2
    return-void

    .line 1221
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 1251
    :cond_4
    const-string v0, "\u5f53\u524d\u7f51\u7edc\u4e0b\u8f7d\u9700\u6d88\u8017\u6d41\u91cf\uff0c\u8bf7\u5c0f\u5fc3\u786e\u8ba4"

    goto :goto_1

    .line 1201
    :cond_5
    const-string v0, "\u5df2\u7ecf\u5728\u4e0b\u8f7d\u961f\u5217\u4e2d"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 39
    .line 4226
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4227
    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-direct {v1, v0}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 4228
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 4229
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4230
    invoke-virtual {v1}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 4231
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 4233
    :cond_0
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v1, v0, p2}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 4236
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->g:Landroid/app/DownloadManager;

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4240
    :goto_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/MyApplication;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    return-void

    .line 4237
    :catch_0
    move-exception v0

    .line 4238
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 39
    .line 3165
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->c:Landroid/view/View;

    .line 3178
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 3165
    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 3166
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->e:Landroid/view/View;

    .line 3182
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->a:Landroid/webkit/WebView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3166
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 39
    return-void

    :cond_0
    move v0, v2

    .line 3178
    goto :goto_0

    :cond_1
    move v1, v2

    .line 3182
    goto :goto_1
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 39
    .line 2494
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/support/design/widget/am;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;)V
    .locals 2

    .prologue
    .line 39
    .line 4170
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    return-void
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;)V
    .locals 2

    .prologue
    .line 39
    .line 4174
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    return-void
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->a:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 268
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onBackPressed()V

    .line 269
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_splash"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 270
    if-eqz v0, :cond_0

    .line 271
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->finish()V

    .line 275
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 162
    :goto_0
    return-void

    .line 1186
    :pswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 1190
    :pswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0

    .line 1194
    :pswitch_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x7f0c04a2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 60
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v0, 0x7f03017c

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->f:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->c(Ljava/lang/String;)V

    .line 65
    const-string v0, "download"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->g:Landroid/app/DownloadManager;

    .line 66
    const v0, 0x7f0c04a0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->a:Landroid/webkit/WebView;

    .line 67
    const v0, 0x7f0c00dd

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->b:Landroid/view/View;

    .line 68
    const v0, 0x7f0c04a2

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->c:Landroid/view/View;

    .line 69
    const v0, 0x7f0c04a3

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->e:Landroid/view/View;

    .line 70
    const v0, 0x7f0c04a4

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1083
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 1084
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 1086
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->a:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 1087
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 1088
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1089
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 1090
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 1091
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->a:Landroid/webkit/WebView;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/a;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/a;-><init>(Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 1101
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->a:Landroid/webkit/WebView;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/b;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/b;-><init>(Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1126
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->a:Landroid/webkit/WebView;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/c;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/c;-><init>(Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1136
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->a:Landroid/webkit/WebView;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/d;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/d;-><init>(Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1146
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->a:Landroid/webkit/WebView;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/cw;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->a:Landroid/webkit/WebView;

    invoke-direct {v2, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/cw;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;)V

    const-string v3, "ZssqAndroidApi"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->c:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->e:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 79
    return-void
.end method
