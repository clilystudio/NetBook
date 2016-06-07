.class public abstract Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 23
    .line 2102
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;->c:Landroid/view/View;

    .line 2107
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 2102
    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 2103
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;->d:Landroid/view/View;

    .line 2111
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;->a:Landroid/webkit/WebView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2103
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 23
    return-void

    :cond_0
    move v0, v2

    .line 2107
    goto :goto_0

    :cond_1
    move v1, v2

    .line 2111
    goto :goto_1
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;)V
    .locals 2

    .prologue
    .line 23
    .line 2149
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    return-void
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;)V
    .locals 2

    .prologue
    .line 23
    .line 2153
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    return-void
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;->a:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 146
    :goto_0
    return-void

    .line 1115
    :pswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 1119
    :pswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0

    .line 1123
    :pswitch_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x7f0c04a2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 32
    const v0, 0x7f03017c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 37
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f0c00dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;->b:Landroid/view/View;

    .line 40
    const v0, 0x7f0c04a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;->a:Landroid/webkit/WebView;

    .line 41
    const v0, 0x7f0c04a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;->c:Landroid/view/View;

    .line 42
    const v0, 0x7f0c04a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;->d:Landroid/view/View;

    .line 43
    const v0, 0x7f0c04a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;->c:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;->d:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1055
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;->a:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 1056
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 1057
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1058
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 1059
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 1061
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/dd;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/dd;-><init>(Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1089
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/de;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/de;-><init>(Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 50
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 51
    return-void
.end method
