.class final Lcom/ushaqi/zhuishushenqi/reader/L;
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
        "Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/e;

.field private synthetic b:I

.field private synthetic c:I

.field private synthetic d:Lcom/ushaqi/zhuishushenqi/reader/K;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/K;Lcom/ushaqi/zhuishushenqi/reader/e;II)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/L;->d:Lcom/ushaqi/zhuishushenqi/reader/K;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/L;->a:Lcom/ushaqi/zhuishushenqi/reader/e;

    iput p3, p0, Lcom/ushaqi/zhuishushenqi/reader/L;->b:I

    iput p4, p0, Lcom/ushaqi/zhuishushenqi/reader/L;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 36
    check-cast p1, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    .line 1040
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getStatus()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/L;->a:Lcom/ushaqi/zhuishushenqi/reader/e;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/L;->d:Lcom/ushaqi/zhuishushenqi/reader/K;

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/L;->b:I

    invoke-static {v1, p1, v2}, Lcom/ushaqi/zhuishushenqi/reader/K;->a(Lcom/ushaqi/zhuishushenqi/reader/K;Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;I)Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/e;->a(Ljava/lang/Object;)V

    .line 1042
    :goto_0
    return-void

    .line 1044
    :cond_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/L;->d:Lcom/ushaqi/zhuishushenqi/reader/K;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/K;->a(Ljava/lang/String;)[I

    move-result-object v2

    .line 1046
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/L;->c:I

    if-nez v1, :cond_2

    .line 1058
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/L;->a:Lcom/ushaqi/zhuishushenqi/reader/e;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/L;->d:Lcom/ushaqi/zhuishushenqi/reader/K;

    .line 2032
    new-instance v4, Lcom/ushaqi/zhuishushenqi/reader/n;

    invoke-direct {v4, v3, p1, v2, v0}, Lcom/ushaqi/zhuishushenqi/reader/n;-><init>(Lcom/ushaqi/zhuishushenqi/reader/K;Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;[II)V

    .line 1058
    invoke-interface {v1, v4}, Lcom/ushaqi/zhuishushenqi/reader/e;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 1048
    :cond_2
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/L;->c:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    .line 1049
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1051
    :cond_3
    array-length v1, v2

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-eqz v1, :cond_1

    .line 1052
    iget v3, p0, Lcom/ushaqi/zhuishushenqi/reader/L;->c:I

    aget v4, v2, v1

    if-lt v3, v4, :cond_4

    move v0, v1

    .line 1054
    goto :goto_1

    .line 1051
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method
