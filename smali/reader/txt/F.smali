.class final Lcom/ushaqi/zhuishushenqi/reader/txt/F;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V
    .locals 0

    .prologue
    .line 1538
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/F;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1541
    const-string v1, "level"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1542
    const-string v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1543
    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v2

    .line 1544
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/F;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->N(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 1551
    :cond_0
    return-void

    .line 1547
    :cond_1
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/F;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v2, v1}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->g(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;I)I

    .line 1548
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/F;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->d(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)[Lcom/ushaqi/zhuishushenqi/reader/o;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 1549
    invoke-virtual {v4, v1}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(I)V

    .line 1548
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
