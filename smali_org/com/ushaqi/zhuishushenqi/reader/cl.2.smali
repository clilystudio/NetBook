.class final Lcom/ushaqi/zhuishushenqi/reader/cl;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/cl;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 244
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/cl;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->g(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;)[Landroid/widget/TextView;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-lez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cl;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->g(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;)[Landroid/widget/TextView;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    aget-object v0, v0, v1

    iget v1, p1, Landroid/os/Message;->arg1:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/ushaqi/zhuishushenqi/util/t;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cl;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;IZ)V

    goto :goto_0
.end method
