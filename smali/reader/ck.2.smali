.class final Lcom/ushaqi/zhuishushenqi/reader/ck;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;I)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ck;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    iput p2, p0, Lcom/ushaqi/zhuishushenqi/reader/ck;->a:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ck;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->d(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ck;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->e(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;)I

    move-result v0

    if-lez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ck;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->f(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;)I

    .line 229
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 230
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ck;->a:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 231
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ck;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->e(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 232
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ck;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 234
    :cond_1
    return-void
.end method
