.class final Lcom/mob/tools/gui/f;
.super Ljava/io/FilterInputStream;


# instance fields
.field private a:Ljava/io/InputStream;


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcom/mob/tools/gui/f;->a:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final skip(J)J
    .locals 9

    const-wide/16 v2, 0x0

    move-wide v0, v2

    :goto_0
    cmp-long v4, v0, p1

    if-gez v4, :cond_0

    iget-object v4, p0, Lcom/mob/tools/gui/f;->a:Ljava/io/InputStream;

    sub-long v6, p1, v0

    invoke-virtual {v4, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    add-long/2addr v0, v4

    goto :goto_0

    :cond_0
    return-wide v0
.end method
