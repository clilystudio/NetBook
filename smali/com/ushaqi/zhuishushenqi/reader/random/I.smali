.class final Lcom/ushaqi/zhuishushenqi/reader/random/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/reader/ce;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/I;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 292
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/I;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->i(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)[Lcom/ushaqi/zhuishushenqi/reader/o;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 293
    if-eqz v3, :cond_0

    .line 294
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/reader/o;->b()V

    .line 292
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    :cond_1
    return-void
.end method
