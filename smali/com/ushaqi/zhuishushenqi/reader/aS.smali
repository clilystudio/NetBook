.class final Lcom/ushaqi/zhuishushenqi/reader/aS;
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
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 1750
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/aS;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1750
    check-cast p1, Lcom/ushaqi/zhuishushenqi/reader/n;

    .line 2753
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aS;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Lcom/ushaqi/zhuishushenqi/reader/n;)V

    .line 2754
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aS;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2755
    if-eqz p1, :cond_0

    .line 2756
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/reader/n;->d()[Ljava/lang/Object;

    move-result-object v1

    .line 2757
    if-eqz v1, :cond_0

    .line 2758
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/aS;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    aget-object v0, v1, v3

    check-cast v0, [Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;[Ljava/lang/String;)[Ljava/lang/String;

    .line 2759
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/aS;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-static {v2, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 2760
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aS;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Z)V

    .line 1750
    :cond_0
    return-void
.end method
