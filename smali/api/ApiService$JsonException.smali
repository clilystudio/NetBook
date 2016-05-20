.class Lcom/ushaqi/zhuishushenqi/api/ApiService$JsonException;
.super Ljava/io/IOException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x72757ea7540ff7acL


# direct methods
.method public constructor <init>(Lcom/google/gson/JsonParseException;)V
    .locals 1

    .prologue
    .line 379
    invoke-virtual {p1}, Lcom/google/gson/JsonParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/api/ApiService$JsonException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 381
    return-void
.end method
