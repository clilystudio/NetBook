.class final Lcom/ushaqi/zhuishushenqi/reader/random/x;
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
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/random/w;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/random/w;)V
    .locals 0

    .prologue
    .line 848
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/x;->a:Lcom/ushaqi/zhuishushenqi/reader/random/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 848
    check-cast p1, Lcom/ushaqi/zhuishushenqi/reader/n;

    .line 1851
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/x;->a:Lcom/ushaqi/zhuishushenqi/reader/random/w;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/reader/random/w;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->i(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)[Lcom/ushaqi/zhuishushenqi/reader/o;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/n;)V

    .line 1852
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/x;->a:Lcom/ushaqi/zhuishushenqi/reader/random/w;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/reader/random/w;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->u(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setCurrentItem(IZ)V

    .line 1854
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/x;->a:Lcom/ushaqi/zhuishushenqi/reader/random/w;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/reader/random/w;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->v(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V

    .line 848
    return-void
.end method
