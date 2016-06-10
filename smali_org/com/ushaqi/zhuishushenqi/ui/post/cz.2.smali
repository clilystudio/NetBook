.class final Lcom/ushaqi/zhuishushenqi/ui/post/cz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/widget/av;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cz;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cz;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->i(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/cD;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cz;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->i(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/cD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/cD;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cz;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;)V

    .line 516
    :cond_1
    return-void
.end method
