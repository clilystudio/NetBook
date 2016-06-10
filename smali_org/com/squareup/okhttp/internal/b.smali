.class public abstract Lcom/squareup/okhttp/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static b:Lcom/squareup/okhttp/internal/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/squareup/okhttp/A;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/b;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/squareup/okhttp/A;)Landroid/support/design/widget/K;
.end method

.method public abstract a(Lcom/squareup/okhttp/m;Lcom/squareup/okhttp/internal/http/m;)Lcom/squareup/okhttp/internal/http/A;
.end method

.method public abstract a(Lcom/squareup/okhttp/A;Lcom/squareup/okhttp/m;Lcom/squareup/okhttp/internal/http/m;Lcom/squareup/okhttp/C;)V
.end method

.method public abstract a(Lcom/squareup/okhttp/m;Lcom/squareup/okhttp/Protocol;)V
.end method

.method public abstract a(Lcom/squareup/okhttp/n;Lcom/squareup/okhttp/m;)V
.end method

.method public abstract a(Lcom/squareup/okhttp/p;Ljavax/net/ssl/SSLSocket;Z)V
.end method

.method public abstract a(Lcom/squareup/okhttp/v;Ljava/lang/String;)V
.end method

.method public abstract a(Lcom/squareup/okhttp/m;)Z
.end method

.method public abstract b(Lcom/squareup/okhttp/m;)I
.end method

.method public abstract b(Lcom/squareup/okhttp/A;)Lcom/squareup/okhttp/internal/k;
.end method

.method public abstract b(Lcom/squareup/okhttp/m;Lcom/squareup/okhttp/internal/http/m;)V
.end method

.method public abstract c(Lcom/squareup/okhttp/A;)Lcom/squareup/okhttp/internal/d;
.end method

.method public abstract c(Lcom/squareup/okhttp/m;)Z
.end method
