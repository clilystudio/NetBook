.class public final Lcom/umeng/a/a/c;
.super Lu/aly/bv;
.source "SourceFile"


# instance fields
.field private d:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/umeng/a/a/b;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lu/aly/bv;-><init>(Ljava/lang/String;)V

    .line 235
    iput-object p2, p0, Lcom/umeng/a/a/c;->d:Lorg/json/JSONObject;

    .line 236
    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/umeng/a/a/c;->d:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/umeng/a/a/c;->c:Ljava/lang/String;

    return-object v0
.end method
