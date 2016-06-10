.class final Lcom/ushaqi/zhuishushenqi/ui/bi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bi;->a:Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bi;->a:Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bi;->a:Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 108
    const/4 v0, 0x1

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
