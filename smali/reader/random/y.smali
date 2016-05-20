.class final Lcom/ushaqi/zhuishushenqi/reader/random/y;
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
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/reader/n;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;Lcom/ushaqi/zhuishushenqi/reader/n;)V
    .locals 0

    .prologue
    .line 861
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/y;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/random/y;->b:Lcom/ushaqi/zhuishushenqi/reader/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 861
    check-cast p1, Lcom/ushaqi/zhuishushenqi/reader/n;

    .line 1864
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/y;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->i(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)[Lcom/ushaqi/zhuishushenqi/reader/o;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/n;)V

    .line 1865
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/y;->b:Lcom/ushaqi/zhuishushenqi/reader/n;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/random/z;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/random/z;-><init>(Lcom/ushaqi/zhuishushenqi/reader/random/y;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/n;->b(Lcom/ushaqi/zhuishushenqi/reader/e;)V

    .line 861
    return-void
.end method
