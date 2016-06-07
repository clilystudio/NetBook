.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/ui/aa;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/I;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/I;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/O;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/I;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/O;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/O;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 111
    :cond_0
    return-void
.end method
