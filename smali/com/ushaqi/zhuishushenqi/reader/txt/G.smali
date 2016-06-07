.class final Lcom/ushaqi/zhuishushenqi/reader/txt/G;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V
    .locals 0

    .prologue
    .line 1554
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/G;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/G;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->d(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)[Lcom/ushaqi/zhuishushenqi/reader/o;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 1558
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/reader/o;->k()V

    .line 1557
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1560
    :cond_0
    return-void
.end method
