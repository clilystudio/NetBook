.class public final Lcom/squareup/okhttp/internal/http/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/net/Socket;

.field public final b:Lcom/squareup/okhttp/Protocol;

.field public final c:Lcom/squareup/okhttp/t;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/L;Ljava/net/Socket;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/x;->a:Ljava/net/Socket;

    .line 267
    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/x;->b:Lcom/squareup/okhttp/Protocol;

    .line 268
    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/x;->c:Lcom/squareup/okhttp/t;

    .line 269
    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/L;Ljavax/net/ssl/SSLSocket;Lcom/squareup/okhttp/Protocol;Lcom/squareup/okhttp/t;)V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/x;->a:Ljava/net/Socket;

    .line 276
    iput-object p3, p0, Lcom/squareup/okhttp/internal/http/x;->b:Lcom/squareup/okhttp/Protocol;

    .line 277
    iput-object p4, p0, Lcom/squareup/okhttp/internal/http/x;->c:Lcom/squareup/okhttp/t;

    .line 278
    return-void
.end method
