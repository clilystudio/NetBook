.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/A;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/A;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/B;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/B;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/A;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/A;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/B;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/A;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/A;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 322
    :cond_0
    return-void
.end method
