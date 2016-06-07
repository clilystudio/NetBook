.class final Lcom/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final synthetic a:Lcom/a/a/c;


# direct methods
.method constructor <init>(Lcom/a/a/c;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/a/a/b;->a:Lcom/a/a/c;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    .prologue
    .line 205
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/a/a/o;

    .line 206
    iget-object v1, p0, Lcom/a/a/b;->a:Lcom/a/a/c;

    iget-object v0, v0, Lcom/a/a/o;->b:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lcom/a/a/c;->a(Lorg/json/JSONArray;)V

    .line 207
    const/4 v0, 0x1

    return v0
.end method
