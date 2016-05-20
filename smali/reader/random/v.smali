.class final Lcom/ushaqi/zhuishushenqi/reader/random/v;
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
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/random/u;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/random/u;)V
    .locals 0

    .prologue
    .line 830
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/v;->a:Lcom/ushaqi/zhuishushenqi/reader/random/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 830
    check-cast p1, Lcom/ushaqi/zhuishushenqi/reader/n;

    .line 1833
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/v;->a:Lcom/ushaqi/zhuishushenqi/reader/random/u;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/reader/random/u;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->i(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)[Lcom/ushaqi/zhuishushenqi/reader/o;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/n;)V

    .line 1834
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/v;->a:Lcom/ushaqi/zhuishushenqi/reader/random/u;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/reader/random/u;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->u(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setCurrentItem(IZ)V

    .line 1836
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/v;->a:Lcom/ushaqi/zhuishushenqi/reader/random/u;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/reader/random/u;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->v(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V

    .line 830
    return-void
.end method
