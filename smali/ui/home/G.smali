.class final Lcom/ushaqi/zhuishushenqi/ui/home/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/BookShelf;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;I)V
    .locals 0

    .prologue
    .line 950
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/G;->b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    iput p2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/G;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .prologue
    const/4 v0, -0x1

    .line 950
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    check-cast p2, Lcom/ushaqi/zhuishushenqi/model/BookShelf;

    .line 1953
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->isTop()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->isTop()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1960
    :cond_0
    :goto_0
    return v0

    .line 1955
    :cond_1
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->isTop()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookShelf;->isTop()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1957
    :cond_2
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/G;->b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/G;->a:I

    invoke-static {v1, p1, v2}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/model/BookShelf;I)J

    move-result-wide v2

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/G;->b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    iget v4, p0, Lcom/ushaqi/zhuishushenqi/ui/home/G;->a:I

    invoke-static {v1, p2, v4}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/model/BookShelf;I)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    .line 1958
    const/4 v0, 0x0

    goto :goto_0

    .line 1960
    :cond_3
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/G;->b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/G;->a:I

    invoke-static {v1, p1, v2}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/model/BookShelf;I)J

    move-result-wide v2

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/G;->b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    iget v4, p0, Lcom/ushaqi/zhuishushenqi/ui/home/G;->a:I

    invoke-static {v1, p2, v4}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/model/BookShelf;I)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    :cond_4
    const/4 v0, 0x1

    .line 950
    goto :goto_0
.end method
