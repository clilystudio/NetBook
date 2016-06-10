.class final Lcom/ushaqi/zhuishushenqi/reader/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jeremyfeinstein/slidingmenu/lib/g;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/aj;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 439
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aj;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    .line 440
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aj;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    .line 441
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aj;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    .line 442
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aj;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/aj;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->d(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(I)V

    .line 443
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aj;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    const-string v1, "\u6253\u5f00\u9875\u5c3e"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->q(Landroid/content/Context;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aj;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->e(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aj;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->e(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aj;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u9875\u5c3e\u5e7f\u544a-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/aj;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->e(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->q(Landroid/content/Context;Ljava/lang/String;)V

    .line 446
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/aj;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    sget-object v2, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;->Reader:Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;

    invoke-direct {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer;-><init>(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;)V

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/aj;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    .line 447
    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->e(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer;->a(Ljava/lang/String;)V

    .line 449
    :cond_0
    return-void
.end method
