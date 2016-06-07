.class final Lcom/activeandroid/util/SQLiteUtils$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/Class",
        "<*>;",
        "Lcom/activeandroid/util/SQLiteUtils$SQLiteType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 63
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->INTEGER:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/util/SQLiteUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->INTEGER:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/util/SQLiteUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->INTEGER:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/util/SQLiteUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->INTEGER:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/util/SQLiteUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->REAL:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/util/SQLiteUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->REAL:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/util/SQLiteUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->INTEGER:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/util/SQLiteUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->TEXT:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/util/SQLiteUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-class v0, [B

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->BLOB:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/util/SQLiteUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-class v0, Ljava/lang/Byte;

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->INTEGER:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/util/SQLiteUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-class v0, Ljava/lang/Short;

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->INTEGER:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/util/SQLiteUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-class v0, Ljava/lang/Integer;

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->INTEGER:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/util/SQLiteUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-class v0, Ljava/lang/Long;

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->INTEGER:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/util/SQLiteUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-class v0, Ljava/lang/Float;

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->REAL:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/util/SQLiteUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-class v0, Ljava/lang/Double;

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->REAL:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/util/SQLiteUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-class v0, Ljava/lang/Boolean;

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->INTEGER:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/util/SQLiteUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-class v0, Ljava/lang/Character;

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->TEXT:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/util/SQLiteUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-class v0, Ljava/lang/String;

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->TEXT:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/util/SQLiteUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-class v0, [Ljava/lang/Byte;

    sget-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->BLOB:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {p0, v0, v1}, Lcom/activeandroid/util/SQLiteUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method
