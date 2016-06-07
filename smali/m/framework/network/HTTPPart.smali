.class public abstract Lm/framework/network/HTTPPart;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getInputStream()Ljava/io/InputStream;
.end method

.method public getInputStreamEntity()Lorg/apache/http/entity/InputStreamEntity;
    .locals 4

    .prologue
    .line 14
    invoke-virtual {p0}, Lm/framework/network/HTTPPart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lm/framework/network/HTTPPart;->length()J

    move-result-wide v2

    .line 16
    new-instance v1, Lorg/apache/http/entity/InputStreamEntity;

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    return-object v1
.end method

.method protected abstract length()J
.end method
