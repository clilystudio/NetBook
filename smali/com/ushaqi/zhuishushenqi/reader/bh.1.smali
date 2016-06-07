.class final Lcom/ushaqi/zhuishushenqi/reader/bh;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 2393
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/bh;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 2396
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2398
    const-string v0, ""

    .line 2399
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bh;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ak(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bh;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->al(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/bh;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ai(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2400
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6b63\u5728\u7f13\u5b58: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bh;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->D(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bh;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->al(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bh;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ai(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2406
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bh;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->am(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2409
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bh;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ao(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bh;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->an(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2410
    return-void

    .line 2401
    :cond_1
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bh;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ak(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bh;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->al(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/bh;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ai(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 2402
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u7f13\u5b58\u5b8c\u6210: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bh;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->D(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2403
    :cond_3
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bh;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ak(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 2404
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5df2\u505c\u6b62: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bh;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->D(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bh;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->al(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bh;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ai(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
