.class public Lcom/koushikdutta/async/http/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/koushikdutta/async/http/Multimap;

.field private b:Lcom/koushikdutta/async/http/b/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/koushikdutta/async/http/a/h;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/b/e;)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/koushikdutta/async/http/a/h;->b:Lcom/koushikdutta/async/http/b/e;

    .line 20
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/h;->b:Lcom/koushikdutta/async/http/b/e;

    const-string v1, "Content-Disposition"

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/Multimap;->parseHeader(Lcom/koushikdutta/async/http/b/e;Ljava/lang/String;)Lcom/koushikdutta/async/http/Multimap;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/a/h;->a:Lcom/koushikdutta/async/http/Multimap;

    .line 21
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/h;->a:Lcom/koushikdutta/async/http/Multimap;

    const-string v1, "filename"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
