.class final Lcom/squareup/okhttp/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/squareup/okhttp/n;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/n;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/squareup/okhttp/o;->a:Lcom/squareup/okhttp/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/squareup/okhttp/o;->a:Lcom/squareup/okhttp/n;

    invoke-static {v0}, Lcom/squareup/okhttp/n;->a(Lcom/squareup/okhttp/n;)V

    .line 98
    return-void
.end method
