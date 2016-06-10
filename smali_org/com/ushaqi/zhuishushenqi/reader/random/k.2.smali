.class final Lcom/ushaqi/zhuishushenqi/reader/random/k;
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
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/o;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;Lcom/ushaqi/zhuishushenqi/reader/o;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/k;->b:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/random/k;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 504
    check-cast p1, Lcom/ushaqi/zhuishushenqi/reader/n;

    .line 1507
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/reader/n;->l()I

    move-result v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/k;->b:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->g(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1508
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/k;->b:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/reader/n;->l()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;I)I

    .line 1511
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/k;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/n;)V

    .line 504
    return-void
.end method
