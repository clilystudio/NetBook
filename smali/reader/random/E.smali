.class final Lcom/ushaqi/zhuishushenqi/reader/random/E;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V
    .locals 0

    .prologue
    .line 965
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/E;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 968
    const-string v1, "level"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 969
    const-string v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 970
    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v2

    .line 971
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/random/E;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->x(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 978
    :cond_0
    return-void

    .line 974
    :cond_1
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/random/E;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-static {v2, v1}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->d(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;I)I

    .line 975
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/random/E;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->i(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)[Lcom/ushaqi/zhuishushenqi/reader/o;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 976
    invoke-virtual {v4, v1}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(I)V

    .line 975
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
