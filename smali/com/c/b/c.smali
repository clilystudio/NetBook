.class final Lcom/c/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/c/b/b;


# direct methods
.method constructor <init>(Lcom/c/b/b;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/c/b/c;->a:Lcom/c/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/c/b/c;->a:Lcom/c/b/b;

    invoke-static {v0}, Lcom/c/b/b;->a(Lcom/c/b/b;)V

    .line 128
    return-void
.end method
