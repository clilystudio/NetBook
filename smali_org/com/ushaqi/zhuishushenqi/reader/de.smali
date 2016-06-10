.class final Lcom/ushaqi/zhuishushenqi/reader/de;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/de;->a:Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/de;->a:Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;->d(Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/de;->a:Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;->d(Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 94
    const/4 v0, 0x1

    .line 96
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
