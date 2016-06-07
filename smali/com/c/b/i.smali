.class final Lcom/c/b/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/c/b/h;


# direct methods
.method constructor <init>(Lcom/c/b/h;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/c/b/i;->a:Lcom/c/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/c/b/i;->a:Lcom/c/b/h;

    invoke-static {v0}, Lcom/c/b/h;->a(Lcom/c/b/h;)V

    .line 134
    return-void
.end method
