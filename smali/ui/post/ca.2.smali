.class final Lcom/ushaqi/zhuishushenqi/ui/post/ca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/bZ;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/bZ;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ca;->a:Lcom/ushaqi/zhuishushenqi/ui/post/bZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ca;->a:Lcom/ushaqi/zhuishushenqi/ui/post/bZ;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/bZ;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/cl;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/os/AsyncTask;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ca;->a:Lcom/ushaqi/zhuishushenqi/ui/post/bZ;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/bZ;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/cl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/cl;->cancel(Z)Z

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ca;->a:Lcom/ushaqi/zhuishushenqi/ui/post/bZ;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/bZ;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)V

    .line 179
    return-void
.end method
