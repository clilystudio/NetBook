.class public Lm/framework/network/MultiPart;
.super Lm/framework/network/HTTPPart;
.source "SourceFile"


# instance fields
.field private parts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lm/framework/network/HTTPPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lm/framework/network/HTTPPart;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm/framework/network/MultiPart;->parts:Ljava/util/ArrayList;

    .line 11
    return-void
.end method


# virtual methods
.method public append(Lm/framework/network/HTTPPart;)Lm/framework/network/MultiPart;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lm/framework/network/MultiPart;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    return-object p0
.end method

.method protected getInputStream()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 19
    new-instance v1, Lm/framework/network/MultiPartInputStream;

    invoke-direct {v1}, Lm/framework/network/MultiPartInputStream;-><init>()V

    .line 20
    iget-object v0, p0, Lm/framework/network/MultiPart;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    return-object v1

    .line 20
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/framework/network/HTTPPart;

    .line 21
    invoke-virtual {v0}, Lm/framework/network/HTTPPart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Lm/framework/network/MultiPartInputStream;->addInputStream(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method protected length()J
    .locals 5

    .prologue
    .line 35
    const-wide/16 v0, 0x0

    .line 36
    iget-object v2, p0, Lm/framework/network/MultiPart;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    return-wide v2

    .line 36
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/framework/network/HTTPPart;

    .line 37
    invoke-virtual {v0}, Lm/framework/network/HTTPPart;->length()J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    iget-object v0, p0, Lm/framework/network/MultiPart;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 28
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/framework/network/HTTPPart;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
