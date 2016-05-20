.class final Lcom/ushaqi/zhuishushenqi/ui/post/cr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/widget/av;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cr;->a:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cr;->a:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/cv;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cr;->a:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/cv;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cr;->a:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;)V

    .line 365
    :cond_1
    return-void
.end method
