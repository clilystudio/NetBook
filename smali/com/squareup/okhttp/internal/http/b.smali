.class public Lcom/squareup/okhttp/internal/http/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/squareup/okhttp/C;

.field public final b:Lcom/squareup/okhttp/I;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/C;Lcom/squareup/okhttp/I;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/b;->a:Lcom/squareup/okhttp/C;

    .line 42
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/b;->b:Lcom/squareup/okhttp/I;

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/C;Lcom/squareup/okhttp/I;B)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/http/b;-><init>(Lcom/squareup/okhttp/C;Lcom/squareup/okhttp/I;)V

    return-void
.end method

.method static a(Lcom/squareup/okhttp/C;Ljava/net/Proxy$Type;Lcom/squareup/okhttp/Protocol;)Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 1019
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1020
    invoke-virtual {p0}, Lcom/squareup/okhttp/C;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1040
    invoke-virtual {p0}, Lcom/squareup/okhttp/C;->i()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    .line 1023
    :goto_0
    if-eqz v0, :cond_1

    .line 1024
    invoke-virtual {p0}, Lcom/squareup/okhttp/C;->a()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1029
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1030
    invoke-static {p2}, Lcom/squareup/okhttp/internal/http/b;->a(Lcom/squareup/okhttp/Protocol;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1040
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1026
    :cond_1
    invoke-virtual {p0}, Lcom/squareup/okhttp/C;->a()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/b;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static a(Lcom/squareup/okhttp/Protocol;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1055
    sget-object v0, Lcom/squareup/okhttp/Protocol;->HTTP_1_0:Lcom/squareup/okhttp/Protocol;

    if-ne p0, v0, :cond_0

    const-string v0, "HTTP/1.0"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "HTTP/1.1"

    goto :goto_0
.end method

.method public static a(Ljava/net/URL;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1048
    invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 1049
    if-nez v0, :cond_1

    const-string v0, "/"

    .line 1051
    :cond_0
    :goto_0
    return-object v0

    .line 1050
    :cond_1
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/squareup/okhttp/I;Lcom/squareup/okhttp/C;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0}, Lcom/squareup/okhttp/I;->c()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 86
    :cond_0
    :goto_0
    return v0

    .line 72
    :sswitch_0
    const-string v1, "Expires"

    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/I;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/squareup/okhttp/I;->j()Lcom/squareup/okhttp/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/d;->c()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/squareup/okhttp/I;->j()Lcom/squareup/okhttp/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/d;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/squareup/okhttp/I;->j()Lcom/squareup/okhttp/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/d;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    :cond_1
    :sswitch_1
    invoke-virtual {p0}, Lcom/squareup/okhttp/I;->j()Lcom/squareup/okhttp/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/d;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/squareup/okhttp/C;->h()Lcom/squareup/okhttp/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/d;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 52
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0xcb -> :sswitch_1
        0xcc -> :sswitch_1
        0x12c -> :sswitch_1
        0x12d -> :sswitch_1
        0x12e -> :sswitch_0
        0x133 -> :sswitch_0
        0x134 -> :sswitch_1
        0x194 -> :sswitch_1
        0x195 -> :sswitch_1
        0x19a -> :sswitch_1
        0x19e -> :sswitch_1
        0x1f5 -> :sswitch_1
    .end sparse-switch
.end method
