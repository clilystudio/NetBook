.class final Lcom/ushaqi/zhuishushenqi/reader/txt/A;
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
    .line 1375
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/A;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1375
    check-cast p1, Lcom/ushaqi/zhuishushenqi/reader/n;

    .line 2378
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/A;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->d(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)[Lcom/ushaqi/zhuishushenqi/reader/o;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/n;)V

    .line 2379
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/txt/B;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/B;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/A;)V

    invoke-virtual {p1, v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->b(Lcom/ushaqi/zhuishushenqi/reader/e;)V

    .line 1375
    return-void
.end method
