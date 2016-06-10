.class Lm/framework/ui/widget/asyncview/BitmapProcessor$PatchInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field in:Ljava/io/InputStream;


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 379
    iput-object p1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$PatchInputStream;->in:Ljava/io/InputStream;

    .line 380
    return-void
.end method


# virtual methods
.method public skip(J)J
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    .line 383
    move-wide v0, v2

    .line 384
    :goto_0
    cmp-long v4, v0, p1

    if-ltz v4, :cond_1

    .line 391
    :cond_0
    return-wide v0

    .line 385
    :cond_1
    iget-object v4, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$PatchInputStream;->in:Ljava/io/InputStream;

    sub-long v6, p1, v0

    invoke-virtual {v4, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    .line 386
    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    .line 389
    add-long/2addr v0, v4

    goto :goto_0
.end method
