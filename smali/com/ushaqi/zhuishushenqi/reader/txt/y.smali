.class final Lcom/ushaqi/zhuishushenqi/reader/txt/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/reader/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ushaqi/zhuishushenqi/reader/e",
        "<",
        "Lcom/ushaqi/zhuishushenqi/reader/n;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V
    .locals 0

    .prologue
    .line 1356
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/y;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1356
    check-cast p1, Lcom/ushaqi/zhuishushenqi/reader/n;

    .line 2359
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/y;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->d(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)[Lcom/ushaqi/zhuishushenqi/reader/o;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/n;)V

    .line 2360
    if-eqz p1, :cond_0

    .line 2361
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/txt/z;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/z;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/y;)V

    invoke-virtual {p1, v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->a(Lcom/ushaqi/zhuishushenqi/reader/e;)V

    .line 1356
    :cond_0
    return-void
.end method
