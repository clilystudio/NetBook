.class public Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/webkit/WebView;

.field private c:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "extra_title"

    .line 42
    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "extra_url"

    invoke-virtual {v0, v1, p2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 28
    .line 2132
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->e:Landroid/view/View;

    .line 2145
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 2132
    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 2133
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->f:Landroid/view/View;

    .line 2149
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->b:Landroid/webkit/WebView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2133
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 28
    return-void

    :cond_0
    move v0, v2

    .line 2145
    goto :goto_0

    :cond_1
    move v1, v2

    .line 2149
    goto :goto_1
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;)V
    .locals 2

    .prologue
    .line 28
    .line 3137
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    return-void
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;)V
    .locals 2

    .prologue
    .line 28
    .line 3141
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    return-void
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->b:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 129
    :goto_0
    return-void

    .line 1153
    :pswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 1157
    :pswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0

    .line 1161
    :pswitch_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x7f0c04a2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 49
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f03017c

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->c(Ljava/lang/String;)V

    .line 54
    const v0, 0x7f0c04a0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->b:Landroid/webkit/WebView;

    .line 55
    const v0, 0x7f0c00dd

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->c:Landroid/view/View;

    .line 56
    const v0, 0x7f0c04a2

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->e:Landroid/view/View;

    .line 57
    const v0, 0x7f0c04a3

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->f:Landroid/view/View;

    .line 58
    const v0, 0x7f0c04a4

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1071
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 1072
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 1073
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1074
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 1075
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 1076
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->b:Landroid/webkit/WebView;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/bg;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/bg;-><init>(Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1083
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->b:Landroid/webkit/WebView;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/bh;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/bh;-><init>(Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1103
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->b:Landroid/webkit/WebView;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/bi;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/bi;-><init>(Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1113
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->b:Landroid/webkit/WebView;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/cw;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->b:Landroid/webkit/WebView;

    invoke-direct {v2, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/cw;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;)V

    const-string v3, "ZssqAndroidApi"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->e:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->f:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 67
    return-void
.end method
