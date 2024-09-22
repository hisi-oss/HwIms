.class public Lorg/kxml2/io/KXmlParser;
.super Ljava/lang/Object;
.source "KXmlParser.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlPullParser;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/kxml2/io/KXmlParser$ContentSource;,
        Lorg/kxml2/io/KXmlParser$ValueContext;
    }
.end annotation


# static fields
.field private static final ANY:[C

.field private static final ATTLISTDECL:I = 0xd

.field private static final COMMENT_DOUBLE_DASH:[C

.field private static final DEFAULT_ENTITIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DOUBLE_QUOTE:[C

.field private static final ELEMENTDECL:I = 0xb

.field private static final EMPTY:[C

.field private static final END_CDATA:[C

.field private static final END_COMMENT:[C

.field private static final END_PROCESSING_INSTRUCTION:[C

.field private static final ENTITYDECL:I = 0xc

.field private static final FEATURE_RELAXED:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#relaxed"

.field private static final FIXED:[C

.field private static final ILLEGAL_TYPE:Ljava/lang/String; = "Wrong event type"

.field private static final IMPLIED:[C

.field private static final NDATA:[C

.field private static final NOTATION:[C

.field private static final NOTATIONDECL:I = 0xe

.field private static final PARAMETER_ENTITY_REF:I = 0xf

.field private static final PROPERTY_LOCATION:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#location"

.field private static final PROPERTY_XMLDECL_STANDALONE:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#xmldecl-standalone"

.field private static final PROPERTY_XMLDECL_VERSION:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#xmldecl-version"

.field private static final PUBLIC:[C

.field private static final REQUIRED:[C

.field private static final SINGLE_QUOTE:[C

.field private static final START_ATTLIST:[C

.field private static final START_CDATA:[C

.field private static final START_COMMENT:[C

.field private static final START_DOCTYPE:[C

.field private static final START_ELEMENT:[C

.field private static final START_ENTITY:[C

.field private static final START_NOTATION:[C

.field private static final START_PROCESSING_INSTRUCTION:[C

.field private static final SYSTEM:[C

.field private static final UNEXPECTED_EOF:Ljava/lang/String; = "Unexpected EOF"

.field private static final XML_DECLARATION:I = 0x3e6


# instance fields
.field private attributeCount:I

.field private attributes:[Ljava/lang/String;

.field private buffer:[C

.field private bufferCapture:Ljava/lang/StringBuilder;

.field private bufferStartColumn:I

.field private bufferStartLine:I

.field private defaultAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private degenerated:Z

.field private depth:I

.field private documentEntities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[C>;"
        }
    .end annotation
.end field

.field private elementStack:[Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private error:Ljava/lang/String;

.field private isWhitespace:Z

.field private keepNamespaceAttributes:Z

.field private limit:I

.field private location:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private namespace:Ljava/lang/String;

.field private nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

.field private nspCounts:[I

.field private nspStack:[Ljava/lang/String;

.field private parsedTopLevelStartTag:Z

.field private position:I

.field private prefix:Ljava/lang/String;

.field private processDocDecl:Z

.field private processNsp:Z

.field private publicId:Ljava/lang/String;

.field private reader:Ljava/io/Reader;

.field private relaxed:Z

.field private rootElementName:Ljava/lang/String;

.field private standalone:Ljava/lang/Boolean;

.field public final stringPool:Llibcore/internal/StringPool;

.field private systemId:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private type:I

.field private unresolved:Z

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    .line 50
    sget-object v0, Lorg/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    const-string v1, "lt"

    const-string v2, "<"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lorg/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    const-string v1, "gt"

    const-string v2, ">"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lorg/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    const-string v1, "amp"

    const-string v2, "&"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lorg/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    const-string v1, "apos"

    const-string v2, "\'"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lorg/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    const-string v1, "quot"

    const-string v2, "\""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/kxml2/io/KXmlParser;->START_COMMENT:[C

    .line 63
    const/4 v0, 0x3

    new-array v1, v0, [C

    fill-array-data v1, :array_1

    sput-object v1, Lorg/kxml2/io/KXmlParser;->END_COMMENT:[C

    .line 64
    const/4 v1, 0x2

    new-array v2, v1, [C

    fill-array-data v2, :array_2

    sput-object v2, Lorg/kxml2/io/KXmlParser;->COMMENT_DOUBLE_DASH:[C

    .line 65
    const/16 v2, 0x9

    new-array v3, v2, [C

    fill-array-data v3, :array_3

    sput-object v3, Lorg/kxml2/io/KXmlParser;->START_CDATA:[C

    .line 66
    new-array v3, v0, [C

    fill-array-data v3, :array_4

    sput-object v3, Lorg/kxml2/io/KXmlParser;->END_CDATA:[C

    .line 67
    new-array v3, v1, [C

    fill-array-data v3, :array_5

    sput-object v3, Lorg/kxml2/io/KXmlParser;->START_PROCESSING_INSTRUCTION:[C

    .line 68
    new-array v1, v1, [C

    fill-array-data v1, :array_6

    sput-object v1, Lorg/kxml2/io/KXmlParser;->END_PROCESSING_INSTRUCTION:[C

    .line 69
    new-array v1, v2, [C

    fill-array-data v1, :array_7

    sput-object v1, Lorg/kxml2/io/KXmlParser;->START_DOCTYPE:[C

    .line 70
    const/4 v1, 0x6

    new-array v3, v1, [C

    fill-array-data v3, :array_8

    sput-object v3, Lorg/kxml2/io/KXmlParser;->SYSTEM:[C

    .line 71
    new-array v1, v1, [C

    fill-array-data v1, :array_9

    sput-object v1, Lorg/kxml2/io/KXmlParser;->PUBLIC:[C

    .line 72
    new-array v1, v2, [C

    fill-array-data v1, :array_a

    sput-object v1, Lorg/kxml2/io/KXmlParser;->START_ELEMENT:[C

    .line 73
    new-array v1, v2, [C

    fill-array-data v1, :array_b

    sput-object v1, Lorg/kxml2/io/KXmlParser;->START_ATTLIST:[C

    .line 74
    const/16 v1, 0x8

    new-array v2, v1, [C

    fill-array-data v2, :array_c

    sput-object v2, Lorg/kxml2/io/KXmlParser;->START_ENTITY:[C

    .line 75
    const/16 v2, 0xa

    new-array v2, v2, [C

    fill-array-data v2, :array_d

    sput-object v2, Lorg/kxml2/io/KXmlParser;->START_NOTATION:[C

    .line 76
    const/4 v2, 0x5

    new-array v3, v2, [C

    fill-array-data v3, :array_e

    sput-object v3, Lorg/kxml2/io/KXmlParser;->EMPTY:[C

    .line 77
    new-array v0, v0, [C

    fill-array-data v0, :array_f

    sput-object v0, Lorg/kxml2/io/KXmlParser;->ANY:[C

    .line 78
    new-array v0, v2, [C

    fill-array-data v0, :array_10

    sput-object v0, Lorg/kxml2/io/KXmlParser;->NDATA:[C

    .line 79
    new-array v0, v1, [C

    fill-array-data v0, :array_11

    sput-object v0, Lorg/kxml2/io/KXmlParser;->NOTATION:[C

    .line 80
    new-array v0, v1, [C

    fill-array-data v0, :array_12

    sput-object v0, Lorg/kxml2/io/KXmlParser;->REQUIRED:[C

    .line 81
    const/4 v0, 0x7

    new-array v0, v0, [C

    fill-array-data v0, :array_13

    sput-object v0, Lorg/kxml2/io/KXmlParser;->IMPLIED:[C

    .line 82
    new-array v0, v2, [C

    fill-array-data v0, :array_14

    sput-object v0, Lorg/kxml2/io/KXmlParser;->FIXED:[C

    .line 657
    const/4 v0, 0x1

    new-array v1, v0, [C

    const/4 v2, 0x0

    const/16 v3, 0x27

    aput-char v3, v1, v2

    sput-object v1, Lorg/kxml2/io/KXmlParser;->SINGLE_QUOTE:[C

    .line 658
    new-array v0, v0, [C

    const/16 v1, 0x22

    aput-char v1, v0, v2

    sput-object v0, Lorg/kxml2/io/KXmlParser;->DOUBLE_QUOTE:[C

    return-void

    :array_0
    .array-data 2
        0x3cs
        0x21s
        0x2ds
        0x2ds
    .end array-data

    :array_1
    .array-data 2
        0x2ds
        0x2ds
        0x3es
    .end array-data

    nop

    :array_2
    .array-data 2
        0x2ds
        0x2ds
    .end array-data

    :array_3
    .array-data 2
        0x3cs
        0x21s
        0x5bs
        0x43s
        0x44s
        0x41s
        0x54s
        0x41s
        0x5bs
    .end array-data

    nop

    :array_4
    .array-data 2
        0x5ds
        0x5ds
        0x3es
    .end array-data

    nop

    :array_5
    .array-data 2
        0x3cs
        0x3fs
    .end array-data

    :array_6
    .array-data 2
        0x3fs
        0x3es
    .end array-data

    :array_7
    .array-data 2
        0x3cs
        0x21s
        0x44s
        0x4fs
        0x43s
        0x54s
        0x59s
        0x50s
        0x45s
    .end array-data

    nop

    :array_8
    .array-data 2
        0x53s
        0x59s
        0x53s
        0x54s
        0x45s
        0x4ds
    .end array-data

    :array_9
    .array-data 2
        0x50s
        0x55s
        0x42s
        0x4cs
        0x49s
        0x43s
    .end array-data

    :array_a
    .array-data 2
        0x3cs
        0x21s
        0x45s
        0x4cs
        0x45s
        0x4ds
        0x45s
        0x4es
        0x54s
    .end array-data

    nop

    :array_b
    .array-data 2
        0x3cs
        0x21s
        0x41s
        0x54s
        0x54s
        0x4cs
        0x49s
        0x53s
        0x54s
    .end array-data

    nop

    :array_c
    .array-data 2
        0x3cs
        0x21s
        0x45s
        0x4es
        0x54s
        0x49s
        0x54s
        0x59s
    .end array-data

    :array_d
    .array-data 2
        0x3cs
        0x21s
        0x4es
        0x4fs
        0x54s
        0x41s
        0x54s
        0x49s
        0x4fs
        0x4es
    .end array-data

    :array_e
    .array-data 2
        0x45s
        0x4ds
        0x50s
        0x54s
        0x59s
    .end array-data

    nop

    :array_f
    .array-data 2
        0x41s
        0x4es
        0x59s
    .end array-data

    nop

    :array_10
    .array-data 2
        0x4es
        0x44s
        0x41s
        0x54s
        0x41s
    .end array-data

    nop

    :array_11
    .array-data 2
        0x4es
        0x4fs
        0x54s
        0x41s
        0x54s
        0x49s
        0x4fs
        0x4es
    .end array-data

    :array_12
    .array-data 2
        0x52s
        0x45s
        0x51s
        0x55s
        0x49s
        0x52s
        0x45s
        0x44s
    .end array-data

    :array_13
    .array-data 2
        0x49s
        0x4ds
        0x50s
        0x4cs
        0x49s
        0x45s
        0x44s
    .end array-data

    nop

    :array_14
    .array-data 2
        0x46s
        0x49s
        0x58s
        0x45s
        0x44s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/16 v0, 0x10

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    .line 134
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    .line 135
    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    .line 142
    const/16 v1, 0x2000

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    .line 143
    const/4 v1, 0x0

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 144
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    .line 176
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    .line 182
    new-instance v0, Llibcore/internal/StringPool;

    invoke-direct {v0}, Llibcore/internal/StringPool;-><init>()V

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->stringPool:Llibcore/internal/StringPool;

    return-void
.end method

.method private adjustNsp()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 195
    const/4 v0, 0x0

    .line 197
    .local v0, "any":Z
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "any":Z
    :goto_0
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    shl-int/lit8 v3, v3, 0x2

    const/4 v4, -0x1

    const/16 v5, 0x3a

    if-ge v0, v3, :cond_5

    .line 198
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v0, 0x2

    aget-object v3, v3, v6

    .line 199
    .local v3, "attrName":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 202
    .local v5, "cut":I
    if-eq v5, v4, :cond_0

    .line 203
    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, "prefix":Ljava/lang/String;
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 205
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_0
    const-string v4, "xmlns"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 206
    move-object v4, v3

    .line 207
    .restart local v4    # "prefix":Ljava/lang/String;
    const/4 v3, 0x0

    .line 212
    :goto_1
    const-string v6, "xmlns"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 213
    const/4 v2, 0x1

    goto :goto_2

    .line 215
    :cond_1
    iget-object v6, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    iget v7, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    aget v8, v6, v7

    add-int/lit8 v9, v8, 0x1

    aput v9, v6, v7

    shl-int/lit8 v6, v8, 0x1

    .line 217
    .local v6, "j":I
    iget-object v7, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v8, v6, 0x2

    invoke-direct {p0, v7, v8}, Lorg/kxml2/io/KXmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    .line 218
    iget-object v7, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    aput-object v3, v7, v6

    .line 219
    iget-object v7, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v8, v6, 0x1

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v10, v0, 0x3

    aget-object v9, v9, v10

    aput-object v9, v7, v8

    .line 221
    if-eqz v3, :cond_2

    iget-object v7, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v8, v0, 0x3

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 222
    const-string v7, "illegal empty namespace"

    invoke-direct {p0, v7}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 225
    :cond_2
    iget-boolean v7, p0, Lorg/kxml2/io/KXmlParser;->keepNamespaceAttributes:Z

    if-eqz v7, :cond_3

    .line 228
    iget-object v7, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const-string v8, "http://www.w3.org/2000/xmlns/"

    aput-object v8, v7, v0

    .line 229
    const/4 v2, 0x1

    goto :goto_2

    .line 231
    :cond_3
    iget-object v7, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v8, v0, 0x4

    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    iget v10, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    shl-int/lit8 v10, v10, 0x2

    sub-int/2addr v10, v0

    invoke-static {v7, v8, v9, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    add-int/lit8 v0, v0, -0x4

    .line 197
    .end local v3    # "attrName":Ljava/lang/String;
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v5    # "cut":I
    .end local v6    # "j":I
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_0

    .line 243
    .end local v0    # "i":I
    :cond_5
    if-eqz v2, :cond_b

    .line 244
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x4

    .restart local v0    # "i":I
    :goto_3
    if-ltz v0, :cond_b

    .line 246
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v0, 0x2

    aget-object v3, v3, v6

    .line 247
    .restart local v3    # "attrName":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 249
    .local v6, "cut":I
    if-nez v6, :cond_7

    iget-boolean v7, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-eqz v7, :cond_6

    goto :goto_4

    .line 250
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illegal attribute name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 252
    :cond_7
    :goto_4
    if-eq v6, v4, :cond_a

    .line 253
    invoke-virtual {v3, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 255
    .local v7, "attrPrefix":Ljava/lang/String;
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 257
    invoke-virtual {p0, v7}, Lorg/kxml2/io/KXmlParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 259
    .local v8, "attrNs":Ljava/lang/String;
    if-nez v8, :cond_9

    iget-boolean v9, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-eqz v9, :cond_8

    goto :goto_5

    .line 260
    :cond_8
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Undefined Prefix: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 264
    :cond_9
    :goto_5
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    aput-object v8, v9, v0

    .line 265
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v10, v0, 0x1

    aput-object v7, v9, v10

    .line 266
    iget-object v9, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v10, v0, 0x2

    aput-object v3, v9, v10

    .line 244
    .end local v3    # "attrName":Ljava/lang/String;
    .end local v6    # "cut":I
    .end local v7    # "attrPrefix":Ljava/lang/String;
    .end local v8    # "attrNs":Ljava/lang/String;
    :cond_a
    add-int/lit8 v0, v0, -0x4

    goto :goto_3

    .line 271
    .end local v0    # "i":I
    :cond_b
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 273
    .local v0, "cut":I
    if-nez v0, :cond_c

    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illegal tag name: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 277
    :cond_c
    if-eq v0, v4, :cond_d

    .line 278
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    .line 279
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 282
    :cond_d
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/kxml2/io/KXmlParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    .line 284
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    if-nez v1, :cond_f

    .line 285
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "undefined prefix: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 288
    :cond_e
    const-string v1, ""

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    .line 291
    :cond_f
    return v2
.end method

.method private checkRelaxed(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 304
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    .line 310
    :cond_0
    return-void

    .line 305
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private defineAttributeDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "attributeName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 879
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->defaultAttributes:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 880
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->defaultAttributes:Ljava/util/Map;

    .line 882
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->defaultAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 883
    .local v0, "elementAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 884
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 885
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->defaultAttributes:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    :cond_1
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    return-void
.end method

.method private ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 3
    .param p1, "arr"    # [Ljava/lang/String;
    .param p2, "required"    # I

    .line 295
    array-length v0, p1

    if-lt v0, p2, :cond_0

    .line 296
    return-object p1

    .line 298
    :cond_0
    add-int/lit8 v0, p2, 0x10

    new-array v0, v0, [Ljava/lang/String;

    .line 299
    .local v0, "bigger":[Ljava/lang/String;
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    return-object v0
.end method

.method private fillBuffer(I)Z
    .locals 7
    .param p1, "minimum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1483
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1484
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v0, v2, :cond_1

    .line 1487
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->popContentSource()V

    .line 1488
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v0, v2

    if-lt v0, p1, :cond_0

    .line 1489
    return v1

    .line 1485
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const/4 v1, 0x0

    const-string v2, "Unbalanced entity!"

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1494
    :cond_2
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    if-ge v2, v3, :cond_4

    .line 1495
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    aget-char v3, v3, v2

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    .line 1496
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->bufferStartLine:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/kxml2/io/KXmlParser;->bufferStartLine:I

    .line 1497
    iput v0, p0, Lorg/kxml2/io/KXmlParser;->bufferStartColumn:I

    goto :goto_1

    .line 1499
    :cond_3
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->bufferStartColumn:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/kxml2/io/KXmlParser;->bufferStartColumn:I

    .line 1494
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1503
    .end local v2    # "i":I
    :cond_4
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    if-eqz v2, :cond_5

    .line 1504
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    invoke-virtual {v2, v3, v0, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1507
    :cond_5
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    if-eq v2, v3, :cond_6

    .line 1508
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    .line 1509
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 1511
    :cond_6
    iput v0, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    .line 1514
    :goto_2
    iput v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1516
    :cond_7
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    array-length v5, v5

    iget v6, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v2

    move v3, v2

    .local v3, "total":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_8

    .line 1517
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    .line 1518
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v2, p1, :cond_7

    .line 1519
    return v1

    .line 1522
    :cond_8
    return v0
.end method

.method private next(Z)I
    .locals 8
    .param p1, "justOneToken"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 325
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    .line 326
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    .line 332
    :cond_0
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 333
    iput-boolean v4, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    .line 334
    iput v2, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 335
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    return v0

    .line 338
    :cond_1
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 339
    if-eqz p1, :cond_2

    .line 340
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    .line 341
    const/16 v0, 0x9

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 342
    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    .line 343
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    return v0

    .line 345
    :cond_2
    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->error:Ljava/lang/String;

    .line 349
    :cond_3
    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->peekType(Z)I

    move-result v0

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 351
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/16 v2, 0x3e6

    if-ne v0, v2, :cond_4

    .line 352
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readXmlDeclaration()V

    .line 353
    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->peekType(Z)I

    move-result v0

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 356
    :cond_4
    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    .line 357
    iput-boolean v3, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    .line 358
    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    .line 359
    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 360
    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    .line 361
    const/4 v0, -0x1

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    .line 362
    xor-int/lit8 v0, p1, 0x1

    .line 365
    .local v0, "throwOnResolveFailure":Z
    :goto_0
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v5, 0x7

    packed-switch v2, :pswitch_data_0

    .line 428
    :pswitch_0
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Unexpected token"

    invoke-direct {v2, v3, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 421
    :pswitch_1
    invoke-direct {p0, p1}, Lorg/kxml2/io/KXmlParser;->readDoctype(Z)V

    .line 422
    iget-boolean v2, p0, Lorg/kxml2/io/KXmlParser;->parsedTopLevelStartTag:Z

    if-nez v2, :cond_5

    goto :goto_1

    .line 423
    :cond_5
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Unexpected token"

    invoke-direct {v2, v3, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 408
    :pswitch_2
    invoke-direct {p0, p1}, Lorg/kxml2/io/KXmlParser;->readComment(Z)Ljava/lang/String;

    move-result-object v2

    .line 409
    .local v2, "commentText":Ljava/lang/String;
    if-eqz p1, :cond_7

    .line 410
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    goto :goto_1

    .line 414
    .end local v2    # "commentText":Ljava/lang/String;
    :pswitch_3
    sget-object v2, Lorg/kxml2/io/KXmlParser;->START_PROCESSING_INSTRUCTION:[C

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 415
    sget-object v2, Lorg/kxml2/io/KXmlParser;->END_PROCESSING_INSTRUCTION:[C

    invoke-direct {p0, v2, p1}, Lorg/kxml2/io/KXmlParser;->readUntil([CZ)Ljava/lang/String;

    move-result-object v2

    .line 416
    .local v2, "processingInstruction":Ljava/lang/String;
    if-eqz p1, :cond_7

    .line 417
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    goto :goto_1

    .line 385
    .end local v2    # "processingInstruction":Ljava/lang/String;
    :pswitch_4
    if-eqz p1, :cond_6

    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .local v2, "entityTextBuilder":Ljava/lang/StringBuilder;
    sget-object v6, Lorg/kxml2/io/KXmlParser$ValueContext;->TEXT:Lorg/kxml2/io/KXmlParser$ValueContext;

    invoke-direct {p0, v2, v3, v0, v6}, Lorg/kxml2/io/KXmlParser;->readEntity(Ljava/lang/StringBuilder;ZZLorg/kxml2/io/KXmlParser$ValueContext;)V

    .line 388
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    .line 389
    goto :goto_1

    .line 399
    .end local v2    # "entityTextBuilder":Ljava/lang/StringBuilder;
    :pswitch_5
    sget-object v2, Lorg/kxml2/io/KXmlParser;->START_CDATA:[C

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 400
    sget-object v2, Lorg/kxml2/io/KXmlParser;->END_CDATA:[C

    invoke-direct {p0, v2, v3}, Lorg/kxml2/io/KXmlParser;->readUntil([CZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    .line 401
    goto :goto_1

    .line 393
    :cond_6
    :pswitch_6
    const/16 v2, 0x3c

    xor-int/lit8 v6, p1, 0x1

    sget-object v7, Lorg/kxml2/io/KXmlParser$ValueContext;->TEXT:Lorg/kxml2/io/KXmlParser$ValueContext;

    invoke-direct {p0, v2, v6, v0, v7}, Lorg/kxml2/io/KXmlParser;->readValue(CZZLorg/kxml2/io/KXmlParser$ValueContext;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    .line 394
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    if-eqz v2, :cond_7

    .line 395
    iput v5, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 431
    :cond_7
    :goto_1
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    const/4 v6, 0x4

    if-nez v2, :cond_9

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v7, 0x6

    if-eq v2, v7, :cond_8

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-eq v2, v6, :cond_8

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v7, 0x5

    if-eq v2, v7, :cond_8

    goto :goto_2

    .line 432
    :cond_8
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Unexpected token"

    invoke-direct {v2, v3, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 435
    :cond_9
    :goto_2
    if-eqz p1, :cond_a

    .line 436
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    return v1

    .line 439
    :cond_a
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-ne v2, v5, :cond_b

    .line 440
    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    .line 448
    :cond_b
    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->peekType(Z)I

    move-result v2

    .line 449
    .local v2, "peek":I
    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    if-ge v2, v6, :cond_c

    .line 450
    iput v6, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 451
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    return v1

    .line 454
    :cond_c
    iput v2, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 455
    .end local v2    # "peek":I
    goto/16 :goto_0

    .line 375
    :pswitch_7
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readEndTag()V

    .line 376
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    return v1

    .line 372
    :pswitch_8
    invoke-direct {p0, v4, v0}, Lorg/kxml2/io/KXmlParser;->parseStartTag(ZZ)V

    .line 373
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    return v1

    .line 378
    :pswitch_9
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    return v1

    .line 322
    .end local v0    # "throwOnResolveFailure":Z
    :cond_d
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "setInput() must be called first."

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private parseStartTag(ZZ)V
    .locals 9
    .param p1, "xmldecl"    # Z
    .param p2, "throwOnResolveFailure"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1056
    if-nez p1, :cond_0

    .line 1057
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 1059
    :cond_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 1060
    const/4 v0, 0x0

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    .line 1063
    :goto_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 1065
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    const/4 v3, 0x1

    if-lt v1, v2, :cond_1

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1066
    const-string v0, "Unexpected EOF"

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1067
    return-void

    .line 1070
    :cond_1
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v1, v1, v2

    .line 1072
    .local v1, "c":I
    const/16 v2, 0x3e

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    .line 1073
    const/16 v5, 0x3f

    if-ne v1, v5, :cond_9

    .line 1074
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1075
    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 1076
    return-void

    .line 1079
    :cond_2
    const/16 v5, 0x2f

    if-ne v1, v5, :cond_3

    .line 1080
    iput-boolean v3, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    .line 1081
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v5, v3

    iput v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1082
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 1083
    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 1084
    goto :goto_1

    .line 1085
    :cond_3
    if-ne v1, v2, :cond_9

    .line 1086
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1087
    nop

    .line 1137
    .end local v1    # "c":I
    :goto_1
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    mul-int/lit8 v1, v1, 0x4

    .line 1138
    .local v1, "sp":I
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    if-ne v2, v3, :cond_4

    .line 1139
    iput-boolean v3, p0, Lorg/kxml2/io/KXmlParser;->parsedTopLevelStartTag:Z

    .line 1141
    :cond_4
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v5, v1, 0x4

    invoke-direct {p0, v2, v5}, Lorg/kxml2/io/KXmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    .line 1142
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v5, v1, 0x3

    iget-object v6, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    aput-object v6, v2, v5

    .line 1144
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    array-length v5, v5

    if-lt v2, v5, :cond_5

    .line 1145
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    add-int/lit8 v2, v2, 0x4

    new-array v2, v2, [I

    .line 1146
    .local v2, "bigger":[I
    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    iget-object v6, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    array-length v6, v6

    invoke-static {v5, v0, v2, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1147
    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    .line 1150
    .end local v2    # "bigger":[I
    :cond_5
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    iget v6, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    sub-int/2addr v6, v3

    aget v3, v5, v6

    aput v3, v0, v2

    .line 1152
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->processNsp:Z

    if-eqz v0, :cond_6

    .line 1153
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->adjustNsp()Z

    goto :goto_2

    .line 1155
    :cond_6
    const-string v0, ""

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    .line 1159
    :goto_2
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->defaultAttributes:Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 1160
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->defaultAttributes:Ljava/util/Map;

    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1161
    .local v0, "elementDefaultAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_8

    .line 1162
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1163
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lorg/kxml2/io/KXmlParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 1164
    goto :goto_3

    .line 1167
    :cond_7
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    mul-int/lit8 v5, v5, 0x4

    .line 1168
    .local v5, "i":I
    iget-object v6, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v7, v5, 0x4

    invoke-direct {p0, v6, v7}, Lorg/kxml2/io/KXmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    .line 1169
    iget-object v6, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const-string v7, ""

    aput-object v7, v6, v5

    .line 1170
    iget-object v6, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v7, v5, 0x1

    aput-object v4, v6, v7

    .line 1171
    iget-object v6, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v7, v5, 0x2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v6, v7

    .line 1172
    iget-object v6, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v7, v5, 0x3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v6, v7

    .line 1173
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "i":I
    goto :goto_3

    .line 1177
    .end local v0    # "elementDefaultAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 1178
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    aput-object v3, v0, v2

    .line 1179
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x2

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    aput-object v3, v0, v2

    .line 1180
    return-void

    .line 1091
    .local v1, "c":I
    :cond_9
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v2

    .line 1093
    .local v2, "attrName":Ljava/lang/String;
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    mul-int/lit8 v5, v5, 0x4

    .line 1094
    .restart local v5    # "i":I
    iget-object v6, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v7, v5, 0x4

    invoke-direct {p0, v6, v7}, Lorg/kxml2/io/KXmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    .line 1095
    iget-object v6, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const-string v7, ""

    aput-object v7, v6, v5

    .line 1096
    iget-object v6, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v7, v5, 0x1

    aput-object v4, v6, v7

    .line 1097
    iget-object v6, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v7, v5, 0x2

    aput-object v2, v6, v7

    .line 1099
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 1100
    iget v6, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v7, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v6, v7, :cond_a

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1101
    const-string v0, "Unexpected EOF"

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1102
    return-void

    .line 1105
    :cond_a
    iget-object v6, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v7, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v6, v6, v7

    const/16 v7, 0x3d

    if-ne v6, v7, :cond_10

    .line 1106
    iget v6, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v6, v3

    iput v6, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1108
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 1109
    iget v6, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v7, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v6, v7, :cond_b

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v6

    if-nez v6, :cond_b

    .line 1110
    const-string v0, "Unexpected EOF"

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1111
    return-void

    .line 1113
    :cond_b
    iget-object v6, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v7, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v6, v6, v7

    .line 1115
    .local v6, "delimiter":C
    const/16 v7, 0x27

    if-eq v6, v7, :cond_e

    const/16 v7, 0x22

    if-ne v6, v7, :cond_c

    goto :goto_4

    .line 1117
    :cond_c
    iget-boolean v7, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-eqz v7, :cond_d

    .line 1118
    const/16 v6, 0x20

    goto :goto_5

    .line 1120
    :cond_d
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "attr value delimiter missing!"

    invoke-direct {v0, v3, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1116
    :cond_e
    :goto_4
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1123
    :goto_5
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v7, v5, 0x3

    sget-object v8, Lorg/kxml2/io/KXmlParser$ValueContext;->ATTRIBUTE:Lorg/kxml2/io/KXmlParser$ValueContext;

    invoke-direct {p0, v6, v3, p2, v8}, Lorg/kxml2/io/KXmlParser;->readValue(CZZLorg/kxml2/io/KXmlParser$ValueContext;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    .line 1126
    const/16 v4, 0x20

    if-eq v6, v4, :cond_f

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v4

    if-ne v4, v6, :cond_f

    .line 1127
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1129
    .end local v6    # "delimiter":C
    :cond_f
    goto :goto_6

    :cond_10
    iget-boolean v3, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-eqz v3, :cond_11

    .line 1130
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v4, v5, 0x3

    aput-object v2, v3, v4

    goto :goto_6

    .line 1132
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attr.value missing f. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1133
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v4, v5, 0x3

    aput-object v2, v3, v4

    .line 1135
    .end local v1    # "c":I
    .end local v2    # "attrName":Ljava/lang/String;
    .end local v5    # "i":I
    :goto_6
    goto/16 :goto_0
.end method

.method private peekCharacter()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1470
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1473
    :cond_0
    const/4 v0, -0x1

    return v0

    .line 1471
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v0, v0, v1

    return v0
.end method

.method private peekType(Z)I
    .locals 9
    .param p1, "inDeclaration"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 993
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 994
    return v2

    .line 997
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v0, v0, v1

    const/16 v1, 0x3c

    const/4 v3, 0x6

    const/4 v4, 0x4

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    .line 1047
    return v4

    .line 999
    :pswitch_0
    return v3

    .line 1045
    :pswitch_1
    if-eqz p1, :cond_1

    const/16 v4, 0xf

    nop

    :cond_1
    return v4

    .line 1001
    :cond_2
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    const/4 v1, 0x3

    add-int/2addr v0, v1

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    const/4 v6, 0x0

    if-lt v0, v5, :cond_4

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 1002
    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Dangling <"

    invoke-direct {v0, v1, p0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1005
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v5, v2

    aget-char v0, v0, v5

    const/16 v2, 0x21

    const/16 v5, 0x4c

    const/4 v7, 0x5

    const/4 v8, 0x2

    if-eq v0, v2, :cond_c

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_b

    const/16 v2, 0x3f

    if-eq v0, v2, :cond_5

    .line 1042
    return v8

    .line 1010
    :cond_5
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v0, v7

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v0, v2, :cond_6

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_6
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v2, v8

    aget-char v0, v0, v2

    const/16 v2, 0x78

    if-eq v0, v2, :cond_7

    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v2, v8

    aget-char v0, v0, v2

    const/16 v2, 0x58

    if-ne v0, v2, :cond_a

    :cond_7
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v2, v1

    aget-char v0, v0, v2

    const/16 v2, 0x6d

    if-eq v0, v2, :cond_8

    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v2, v1

    aget-char v0, v0, v2

    const/16 v1, 0x4d

    if-ne v0, v1, :cond_a

    :cond_8
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v1, v4

    aget-char v0, v0, v1

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v1, v4

    aget-char v0, v0, v1

    if-ne v0, v5, :cond_a

    :cond_9
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v1, v7

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    .line 1015
    const/16 v0, 0x3e6

    return v0

    .line 1017
    :cond_a
    const/16 v0, 0x8

    return v0

    .line 1007
    :cond_b
    return v1

    .line 1020
    :cond_c
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v2, v8

    aget-char v0, v0, v2

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_12

    const/16 v2, 0x41

    if-eq v0, v2, :cond_11

    const/16 v2, 0x4e

    if-eq v0, v2, :cond_10

    const/16 v3, 0x5b

    if-eq v0, v3, :cond_f

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 1028
    :pswitch_2
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v3, v1

    aget-char v0, v0, v3

    if-eq v0, v5, :cond_e

    if-ne v0, v2, :cond_d

    .line 1032
    const/16 v0, 0xc

    return v0

    .line 1034
    :cond_d
    nop

    .line 1040
    :goto_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Unexpected <!"

    invoke-direct {v0, v1, p0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1030
    :cond_e
    const/16 v0, 0xb

    return v0

    .line 1022
    :pswitch_3
    const/16 v0, 0xa

    return v0

    .line 1024
    :cond_f
    return v7

    .line 1038
    :cond_10
    const/16 v0, 0xe

    return v0

    .line 1036
    :cond_11
    const/16 v0, 0xd

    return v0

    .line 1026
    :cond_12
    const/16 v0, 0x9

    return v0

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x44
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private popContentSource()V
    .locals 1

    .line 2173
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    invoke-static {v0}, Lorg/kxml2/io/KXmlParser$ContentSource;->access$000(Lorg/kxml2/io/KXmlParser$ContentSource;)[C

    move-result-object v0

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    .line 2174
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    invoke-static {v0}, Lorg/kxml2/io/KXmlParser$ContentSource;->access$100(Lorg/kxml2/io/KXmlParser$ContentSource;)I

    move-result v0

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 2175
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    invoke-static {v0}, Lorg/kxml2/io/KXmlParser$ContentSource;->access$200(Lorg/kxml2/io/KXmlParser$ContentSource;)I

    move-result v0

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    .line 2176
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    invoke-static {v0}, Lorg/kxml2/io/KXmlParser$ContentSource;->access$300(Lorg/kxml2/io/KXmlParser$ContentSource;)Lorg/kxml2/io/KXmlParser$ContentSource;

    move-result-object v0

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    .line 2177
    return-void
.end method

.method private pushContentSource([C)V
    .locals 5
    .param p1, "newBuffer"    # [C

    .line 2163
    new-instance v0, Lorg/kxml2/io/KXmlParser$ContentSource;

    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/kxml2/io/KXmlParser$ContentSource;-><init>(Lorg/kxml2/io/KXmlParser$ContentSource;[CII)V

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->nextContentSource:Lorg/kxml2/io/KXmlParser$ContentSource;

    .line 2164
    iput-object p1, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    .line 2165
    const/4 v0, 0x0

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 2166
    array-length v0, p1

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    .line 2167
    return-void
.end method

.method private read(C)V
    .locals 3
    .param p1, "expected"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1441
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v0

    .line 1442
    .local v0, "c":I
    if-eq v0, p1, :cond_0

    .line 1443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\' actual: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1444
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1445
    return-void

    .line 1448
    :cond_0
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1449
    return-void
.end method

.method private read([C)V
    .locals 6
    .param p1, "chars"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1452
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    array-length v1, p1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-le v0, v1, :cond_0

    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' but was EOF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1454
    return-void

    .line 1459
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 1460
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    aget-char v2, p1, v0

    if-eq v1, v2, :cond_1

    .line 1461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" but was \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    array-length v5, p1

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "...\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1459
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1466
    .end local v0    # "i":I
    :cond_2
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1467
    return-void
.end method

.method private readAttributeListDeclaration()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 803
    sget-object v0, Lorg/kxml2/io/KXmlParser;->START_ATTLIST:[C

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 804
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 805
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v0

    .line 808
    .local v0, "elementName":Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 809
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    .line 810
    .local v1, "c":I
    const/16 v2, 0x3e

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 811
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 812
    return-void

    .line 816
    :cond_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v2

    .line 819
    .local v2, "attributeName":Ljava/lang/String;
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 820
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v4, v3

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    const/4 v6, 0x0

    if-lt v4, v5, :cond_2

    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 821
    :cond_1
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Malformed attribute list"

    invoke-direct {v3, v4, p0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    .line 823
    :cond_2
    :goto_1
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v4, v4, v5

    sget-object v5, Lorg/kxml2/io/KXmlParser;->NOTATION:[C

    const/4 v7, 0x0

    aget-char v5, v5, v7

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v5, v3

    aget-char v4, v4, v5

    sget-object v5, Lorg/kxml2/io/KXmlParser;->NOTATION:[C

    aget-char v5, v5, v3

    if-ne v4, v5, :cond_3

    .line 824
    sget-object v4, Lorg/kxml2/io/KXmlParser;->NOTATION:[C

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 825
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 827
    :cond_3
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    .line 828
    const/16 v4, 0x28

    if-ne v1, v4, :cond_6

    .line 829
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 831
    :goto_2
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 832
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    .line 833
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 834
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    .line 835
    const/16 v4, 0x29

    if-ne v1, v4, :cond_4

    .line 836
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 837
    goto :goto_3

    .line 838
    :cond_4
    const/16 v4, 0x7c

    if-ne v1, v4, :cond_5

    .line 839
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    goto :goto_2

    .line 841
    :cond_5
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Malformed attribute type"

    invoke-direct {v3, v4, p0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    .line 845
    :cond_6
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    .line 849
    :goto_3
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 850
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    .line 851
    const/16 v4, 0x23

    if-ne v1, v4, :cond_a

    .line 852
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 853
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    .line 854
    const/16 v4, 0x52

    if-ne v1, v4, :cond_7

    .line 855
    sget-object v4, Lorg/kxml2/io/KXmlParser;->REQUIRED:[C

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read([C)V

    goto :goto_4

    .line 856
    :cond_7
    const/16 v4, 0x49

    if-ne v1, v4, :cond_8

    .line 857
    sget-object v4, Lorg/kxml2/io/KXmlParser;->IMPLIED:[C

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read([C)V

    goto :goto_4

    .line 858
    :cond_8
    const/16 v4, 0x46

    if-ne v1, v4, :cond_9

    .line 859
    sget-object v4, Lorg/kxml2/io/KXmlParser;->FIXED:[C

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 863
    :goto_4
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 864
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    goto :goto_5

    .line 861
    :cond_9
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Malformed attribute type"

    invoke-direct {v3, v4, p0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    .line 866
    :cond_a
    :goto_5
    const/16 v4, 0x22

    if-eq v1, v4, :cond_b

    const/16 v4, 0x27

    if-ne v1, v4, :cond_d

    .line 867
    :cond_b
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 869
    int-to-char v4, v1

    sget-object v5, Lorg/kxml2/io/KXmlParser$ValueContext;->ATTRIBUTE:Lorg/kxml2/io/KXmlParser$ValueContext;

    invoke-direct {p0, v4, v3, v3, v5}, Lorg/kxml2/io/KXmlParser;->readValue(CZZLorg/kxml2/io/KXmlParser$ValueContext;)Ljava/lang/String;

    move-result-object v4

    .line 870
    .local v4, "value":Ljava/lang/String;
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v5

    if-ne v5, v1, :cond_c

    .line 871
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v5, v3

    iput v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 873
    :cond_c
    invoke-direct {p0, v0, v2, v4}, Lorg/kxml2/io/KXmlParser;->defineAttributeDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    .end local v1    # "c":I
    .end local v2    # "attributeName":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_d
    goto/16 :goto_0
.end method

.method private readComment(Z)Ljava/lang/String;
    .locals 4
    .param p1, "returnText"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 562
    sget-object v0, Lorg/kxml2/io/KXmlParser;->START_COMMENT:[C

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 564
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-eqz v0, :cond_0

    .line 565
    sget-object v0, Lorg/kxml2/io/KXmlParser;->END_COMMENT:[C

    invoke-direct {p0, v0, p1}, Lorg/kxml2/io/KXmlParser;->readUntil([CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 568
    :cond_0
    sget-object v0, Lorg/kxml2/io/KXmlParser;->COMMENT_DOUBLE_DASH:[C

    invoke-direct {p0, v0, p1}, Lorg/kxml2/io/KXmlParser;->readUntil([CZ)Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, "commentText":Ljava/lang/String;
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_1

    .line 572
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 573
    return-object v0

    .line 570
    :cond_1
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const/4 v2, 0x0

    const-string v3, "Comments may not contain --"

    invoke-direct {v1, v3, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readContentSpec()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 757
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 758
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v0

    .line 759
    .local v0, "c":I
    const/4 v1, 0x0

    const/16 v2, 0x28

    const/4 v3, 0x0

    if-ne v0, v2, :cond_6

    .line 760
    nop

    .line 762
    .local v3, "depth":I
    :cond_0
    if-ne v0, v2, :cond_1

    .line 763
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 764
    :cond_1
    const/16 v4, 0x29

    if-ne v0, v4, :cond_2

    .line 765
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 766
    :cond_2
    const/4 v4, -0x1

    if-eq v0, v4, :cond_5

    .line 770
    :goto_0
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 771
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v0

    .line 772
    if-gtz v3, :cond_0

    .line 774
    const/16 v1, 0x2a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_4

    .line 775
    :cond_3
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 777
    .end local v3    # "depth":I
    :cond_4
    goto :goto_1

    .line 767
    .restart local v3    # "depth":I
    :cond_5
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Unterminated element content spec"

    invoke-direct {v2, v4, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 777
    .end local v3    # "depth":I
    :cond_6
    sget-object v2, Lorg/kxml2/io/KXmlParser;->EMPTY:[C

    aget-char v2, v2, v3

    if-ne v0, v2, :cond_7

    .line 778
    sget-object v1, Lorg/kxml2/io/KXmlParser;->EMPTY:[C

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->read([C)V

    goto :goto_1

    .line 779
    :cond_7
    sget-object v2, Lorg/kxml2/io/KXmlParser;->ANY:[C

    aget-char v2, v2, v3

    if-ne v0, v2, :cond_8

    .line 780
    sget-object v1, Lorg/kxml2/io/KXmlParser;->ANY:[C

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 784
    :goto_1
    return-void

    .line 782
    :cond_8
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Expected element content spec"

    invoke-direct {v2, v3, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private readDoctype(Z)V
    .locals 7
    .param p1, "saveDtdText"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 581
    sget-object v0, Lorg/kxml2/io/KXmlParser;->START_DOCTYPE:[C

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 583
    const/4 v0, -0x1

    .line 584
    .local v0, "startPosition":I
    if-eqz p1, :cond_0

    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    .line 586
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 589
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 590
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/kxml2/io/KXmlParser;->rootElementName:Ljava/lang/String;

    .line 591
    const/4 v3, 0x1

    invoke-direct {p0, v3, v3}, Lorg/kxml2/io/KXmlParser;->readExternalId(ZZ)Z

    .line 592
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 593
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v3

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_1

    .line 594
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readInternalSubset()V

    .line 596
    :cond_1
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    if-eqz p1, :cond_2

    .line 599
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    invoke-virtual {v3, v4, v2, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 600
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 601
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    .line 602
    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    .line 606
    :cond_2
    const/16 v1, 0x3e

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 607
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 608
    return-void

    .line 598
    :catchall_0
    move-exception v3

    if-eqz p1, :cond_3

    .line 599
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v6, p0, Lorg/kxml2/io/KXmlParser;->position:I

    invoke-virtual {v4, v5, v2, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 600
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 601
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    .line 602
    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->bufferCapture:Ljava/lang/StringBuilder;

    :cond_3
    throw v3
.end method

.method private readElementDeclaration()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 731
    sget-object v0, Lorg/kxml2/io/KXmlParser;->START_ELEMENT:[C

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 732
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 733
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    .line 734
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readContentSpec()V

    .line 735
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 736
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 737
    return-void
.end method

.method private readEndTag()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 965
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 966
    const/16 v0, 0x2f

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 967
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 968
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 969
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 971
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x4

    .line 973
    .local v0, "sp":I
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    if-nez v1, :cond_0

    .line 974
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read end tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with no tags open"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 975
    const/16 v1, 0x9

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 976
    return-void

    .line 979
    :cond_0
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 980
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    .line 981
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    .line 982
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x2

    aget-object v1, v1, v2

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    goto :goto_0

    .line 983
    :cond_1
    iget-boolean v1, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-eqz v1, :cond_2

    .line 987
    :goto_0
    return-void

    .line 984
    :cond_2
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected: /"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v4, v0, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readEntity(Ljava/lang/StringBuilder;ZZLorg/kxml2/io/KXmlParser$ValueContext;)V
    .locals 7
    .param p1, "out"    # Ljava/lang/StringBuilder;
    .param p2, "isEntityToken"    # Z
    .param p3, "throwOnResolveFailure"    # Z
    .param p4, "valueContext"    # Lorg/kxml2/io/KXmlParser$ValueContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1189
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1191
    .local v0, "start":I
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v1, v1, v2

    const/16 v2, 0x26

    if-ne v1, v2, :cond_10

    .line 1195
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1198
    :goto_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    .line 1200
    .local v1, "c":I
    const/16 v2, 0x3b

    const/4 v3, 0x1

    if-ne v1, v2, :cond_9

    .line 1201
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1202
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1203
    nop

    .line 1224
    .end local v1    # "c":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1226
    .local v1, "code":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1227
    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 1230
    :cond_0
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 1232
    :try_start_0
    const-string v2, "#x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1233
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_1

    .line 1234
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1235
    .local v2, "c":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1236
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1237
    iput-boolean v4, p0, Lorg/kxml2/io/KXmlParser;->unresolved:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1238
    return-void

    .line 1241
    .end local v2    # "c":I
    :catch_0
    move-exception v2

    .line 1242
    .local v2, "invalidCodePoint":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid character reference: &"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1239
    .end local v2    # "invalidCodePoint":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 1240
    .local v2, "notANumber":Ljava/lang/NumberFormatException;
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid character reference: &"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1246
    .end local v2    # "notANumber":Ljava/lang/NumberFormatException;
    :cond_2
    sget-object v2, Lorg/kxml2/io/KXmlParser$ValueContext;->ENTITY_DECLARATION:Lorg/kxml2/io/KXmlParser$ValueContext;

    if-ne p4, v2, :cond_3

    .line 1248
    return-void

    .line 1251
    :cond_3
    sget-object v2, Lorg/kxml2/io/KXmlParser;->DEFAULT_ENTITIES:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1252
    .local v2, "defaultEntity":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 1253
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1254
    iput-boolean v4, p0, Lorg/kxml2/io/KXmlParser;->unresolved:Z

    .line 1255
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    return-void

    .line 1260
    :cond_4
    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [C

    move-object v6, v5

    .local v6, "resolved":[C
    if-eqz v5, :cond_6

    .line 1261
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1262
    iput-boolean v4, p0, Lorg/kxml2/io/KXmlParser;->unresolved:Z

    .line 1263
    iget-boolean v3, p0, Lorg/kxml2/io/KXmlParser;->processDocDecl:Z

    if-eqz v3, :cond_5

    .line 1264
    invoke-direct {p0, v6}, Lorg/kxml2/io/KXmlParser;->pushContentSource([C)V

    goto :goto_2

    .line 1266
    :cond_5
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 1268
    :goto_2
    return-void

    .line 1277
    .end local v6    # "resolved":[C
    :cond_6
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->systemId:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 1278
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1279
    return-void

    .line 1283
    :cond_7
    iput-boolean v3, p0, Lorg/kxml2/io/KXmlParser;->unresolved:Z

    .line 1284
    if-eqz p3, :cond_8

    .line 1285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unresolved: &"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1287
    :cond_8
    return-void

    .line 1205
    .end local v2    # "defaultEntity":Ljava/lang/String;
    .local v1, "c":I
    :cond_9
    const/16 v2, 0x80

    if-ge v1, v2, :cond_f

    const/16 v2, 0x30

    if-lt v1, v2, :cond_a

    const/16 v2, 0x39

    if-le v1, v2, :cond_f

    :cond_a
    const/16 v2, 0x61

    if-lt v1, v2, :cond_b

    const/16 v2, 0x7a

    if-le v1, v2, :cond_f

    :cond_b
    const/16 v2, 0x41

    if-lt v1, v2, :cond_c

    const/16 v2, 0x5a

    if-le v1, v2, :cond_f

    :cond_c
    const/16 v2, 0x5f

    if-eq v1, v2, :cond_f

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_f

    const/16 v2, 0x23

    if-ne v1, v2, :cond_d

    goto :goto_3

    .line 1215
    :cond_d
    iget-boolean v2, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-eqz v2, :cond_e

    .line 1217
    return-void

    .line 1220
    :cond_e
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const/4 v3, 0x0

    const-string v4, "unterminated entity ref"

    invoke-direct {v2, v4, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 1212
    :cond_f
    :goto_3
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1213
    int-to-char v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1222
    .end local v1    # "c":I
    goto/16 :goto_0

    .line 1192
    :cond_10
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private readEntityDeclaration()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 904
    sget-object v0, Lorg/kxml2/io/KXmlParser;->START_ENTITY:[C

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 905
    const/4 v0, 0x1

    .line 907
    .local v0, "generalEntity":Z
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 908
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x25

    if-ne v1, v3, :cond_0

    .line 909
    const/4 v0, 0x0

    .line 910
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 911
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 914
    :cond_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    move-result-object v1

    .line 916
    .local v1, "name":Ljava/lang/String;
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 917
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v3

    .line 919
    .local v3, "quote":I
    const/16 v4, 0x22

    const/4 v5, 0x0

    if-eq v3, v4, :cond_3

    const/16 v4, 0x27

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 925
    :cond_1
    invoke-direct {p0, v2, v5}, Lorg/kxml2/io/KXmlParser;->readExternalId(ZZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 930
    const-string v2, ""

    .line 931
    .local v2, "entityValue":Ljava/lang/String;
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 932
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v4

    sget-object v6, Lorg/kxml2/io/KXmlParser;->NDATA:[C

    aget-char v5, v6, v5

    if-ne v4, v5, :cond_5

    .line 933
    sget-object v4, Lorg/kxml2/io/KXmlParser;->NDATA:[C

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 934
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 935
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    goto :goto_1

    .line 938
    .end local v2    # "entityValue":Ljava/lang/String;
    :cond_2
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const/4 v4, 0x0

    const-string v5, "Expected entity value or external ID"

    invoke-direct {v2, v5, p0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 920
    :cond_3
    :goto_0
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 921
    int-to-char v4, v3

    sget-object v6, Lorg/kxml2/io/KXmlParser$ValueContext;->ENTITY_DECLARATION:Lorg/kxml2/io/KXmlParser$ValueContext;

    invoke-direct {p0, v4, v2, v5, v6}, Lorg/kxml2/io/KXmlParser;->readValue(CZZLorg/kxml2/io/KXmlParser$ValueContext;)Ljava/lang/String;

    move-result-object v4

    .line 922
    .local v4, "entityValue":Ljava/lang/String;
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v5

    if-ne v5, v3, :cond_4

    .line 923
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v5, v2

    iput v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 938
    :cond_4
    move-object v2, v4

    .line 941
    .end local v4    # "entityValue":Ljava/lang/String;
    .restart local v2    # "entityValue":Ljava/lang/String;
    :cond_5
    :goto_1
    if-eqz v0, :cond_7

    iget-boolean v4, p0, Lorg/kxml2/io/KXmlParser;->processDocDecl:Z

    if-eqz v4, :cond_7

    .line 942
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    if-nez v4, :cond_6

    .line 943
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    .line 945
    :cond_6
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    :cond_7
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 949
    const/16 v4, 0x3e

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 950
    return-void
.end method

.method private readExternalId(ZZ)Z
    .locals 5
    .param p1, "requireSystemName"    # Z
    .param p2, "assignFields"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 623
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 624
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v0

    .line 626
    .local v0, "c":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x53

    if-ne v0, v3, :cond_0

    .line 627
    sget-object v3, Lorg/kxml2/io/KXmlParser;->SYSTEM:[C

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->read([C)V

    goto :goto_0

    .line 628
    :cond_0
    const/16 v3, 0x50

    if-ne v0, v3, :cond_4

    .line 629
    sget-object v3, Lorg/kxml2/io/KXmlParser;->PUBLIC:[C

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 630
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 631
    if-eqz p2, :cond_1

    .line 632
    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->readQuotedId(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/kxml2/io/KXmlParser;->publicId:Ljava/lang/String;

    goto :goto_0

    .line 634
    :cond_1
    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->readQuotedId(Z)Ljava/lang/String;

    .line 640
    :goto_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 642
    if-nez p1, :cond_2

    .line 643
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v3

    .line 644
    .local v3, "delimiter":I
    const/16 v4, 0x22

    if-eq v3, v4, :cond_2

    const/16 v4, 0x27

    if-eq v3, v4, :cond_2

    .line 645
    return v2

    .line 649
    .end local v3    # "delimiter":I
    :cond_2
    if-eqz p2, :cond_3

    .line 650
    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->readQuotedId(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->systemId:Ljava/lang/String;

    goto :goto_1

    .line 652
    :cond_3
    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->readQuotedId(Z)Ljava/lang/String;

    .line 654
    :goto_1
    return v2

    .line 637
    :cond_4
    return v1
.end method

.method private readInternalSubset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 678
    const/16 v0, 0x5b

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 681
    :goto_0
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 682
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v0

    const/16 v1, 0x5d

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 683
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 684
    return-void

    .line 687
    :cond_0
    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->peekType(Z)I

    move-result v0

    .line 688
    .local v0, "declarationType":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 719
    :pswitch_0
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Unexpected token"

    invoke-direct {v1, v3, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 715
    :pswitch_1
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Parameter entity references are not supported"

    invoke-direct {v1, v3, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 702
    :pswitch_2
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readNotationDeclaration()V

    .line 703
    goto :goto_1

    .line 694
    :pswitch_3
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readAttributeListDeclaration()V

    .line 695
    goto :goto_1

    .line 698
    :pswitch_4
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readEntityDeclaration()V

    .line 699
    goto :goto_1

    .line 690
    :pswitch_5
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readElementDeclaration()V

    .line 691
    goto :goto_1

    .line 711
    :pswitch_6
    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->readComment(Z)Ljava/lang/String;

    .line 712
    goto :goto_1

    .line 706
    :pswitch_7
    sget-object v2, Lorg/kxml2/io/KXmlParser;->START_PROCESSING_INSTRUCTION:[C

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 707
    sget-object v2, Lorg/kxml2/io/KXmlParser;->END_PROCESSING_INSTRUCTION:[C

    invoke-direct {p0, v2, v1}, Lorg/kxml2/io/KXmlParser;->readUntil([CZ)Ljava/lang/String;

    .line 708
    nop

    .line 721
    .end local v0    # "declarationType":I
    :goto_1
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private readName()Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1530
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1531
    const-string v0, "name expected"

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1532
    const-string v0, ""

    return-object v0

    .line 1535
    :cond_0
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1536
    .local v0, "start":I
    const/4 v1, 0x0

    .line 1539
    .local v1, "result":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v3, v3, v4

    .line 1540
    .local v3, "c":C
    const/16 v4, 0x3a

    const/16 v5, 0x5f

    const/16 v6, 0x5a

    const/16 v7, 0x41

    const/16 v8, 0x7a

    const/16 v9, 0x61

    if-lt v3, v9, :cond_1

    if-le v3, v8, :cond_4

    :cond_1
    if-lt v3, v7, :cond_2

    if-le v3, v6, :cond_4

    :cond_2
    if-eq v3, v5, :cond_4

    if-eq v3, v4, :cond_4

    const/16 v10, 0xc0

    if-ge v3, v10, :cond_4

    iget-boolean v10, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    if-eqz v10, :cond_3

    goto :goto_0

    .line 1548
    :cond_3
    const-string v2, "name expected"

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1549
    const-string v2, ""

    return-object v2

    .line 1546
    :cond_4
    :goto_0
    iget v10, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v10, v2

    iput v10, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1558
    :goto_1
    iget v10, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v11, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v10, v11, :cond_7

    .line 1559
    if-nez v1, :cond_5

    .line 1560
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v10

    .line 1562
    :cond_5
    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v11, p0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v11, v0

    invoke-virtual {v1, v10, v0, v11}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1563
    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v10

    if-nez v10, :cond_6

    .line 1564
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1566
    :cond_6
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1570
    :cond_7
    iget-object v10, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v11, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v3, v10, v11

    .line 1571
    if-lt v3, v9, :cond_8

    if-le v3, v8, :cond_d

    :cond_8
    if-lt v3, v7, :cond_9

    if-le v3, v6, :cond_d

    :cond_9
    const/16 v10, 0x30

    if-lt v3, v10, :cond_a

    const/16 v10, 0x39

    if-le v3, v10, :cond_d

    :cond_a
    if-eq v3, v5, :cond_d

    const/16 v10, 0x2d

    if-eq v3, v10, :cond_d

    if-eq v3, v4, :cond_d

    const/16 v10, 0x2e

    if-eq v3, v10, :cond_d

    const/16 v10, 0xb7

    if-lt v3, v10, :cond_b

    goto :goto_2

    .line 1584
    :cond_b
    if-nez v1, :cond_c

    .line 1585
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->stringPool:Llibcore/internal/StringPool;

    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v5, v0

    invoke-virtual {v2, v4, v0, v5}, Llibcore/internal/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1587
    :cond_c
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v4, p0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v4, v0

    invoke-virtual {v1, v2, v0, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1588
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1579
    :cond_d
    :goto_2
    iget v10, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v10, v2

    iput v10, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1580
    goto :goto_1
.end method

.method private readNotationDeclaration()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 953
    sget-object v0, Lorg/kxml2/io/KXmlParser;->START_NOTATION:[C

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 954
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 955
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->readName()Ljava/lang/String;

    .line 956
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/kxml2/io/KXmlParser;->readExternalId(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 960
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->skip()V

    .line 961
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->read(C)V

    .line 962
    return-void

    .line 957
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const/4 v1, 0x0

    const-string v2, "Expected external ID or public ID for notation"

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private readQuotedId(Z)Ljava/lang/String;
    .locals 4
    .param p1, "returnText"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 664
    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v0

    .line 666
    .local v0, "quote":I
    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 667
    sget-object v1, Lorg/kxml2/io/KXmlParser;->DOUBLE_QUOTE:[C

    .local v1, "delimiter":[C
    :goto_0
    goto :goto_1

    .line 668
    .end local v1    # "delimiter":[C
    :cond_0
    const/16 v1, 0x27

    if-ne v0, v1, :cond_1

    .line 669
    sget-object v1, Lorg/kxml2/io/KXmlParser;->SINGLE_QUOTE:[C

    goto :goto_0

    .line 671
    .restart local v1    # "delimiter":[C
    :goto_1
    nop

    .line 673
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 674
    invoke-direct {p0, v1, p1}, Lorg/kxml2/io/KXmlParser;->readUntil([CZ)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 671
    .end local v1    # "delimiter":[C
    :cond_1
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const/4 v2, 0x0

    const-string v3, "Expected a quoted string"

    invoke-direct {v1, v3, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readUntil([CZ)Ljava/lang/String;
    .locals 6
    .param p1, "delimiter"    # [C
    .param p2, "returnText"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 467
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 468
    .local v0, "start":I
    const/4 v1, 0x0

    .line 470
    .local v1, "result":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_0

    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 471
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 472
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    :cond_0
    :goto_0
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    array-length v3, p1

    add-int/2addr v2, v3

    iget v3, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    const/4 v4, 0x0

    if-le v2, v3, :cond_4

    .line 478
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    if-ge v0, v2, :cond_2

    if-eqz p2, :cond_2

    .line 479
    if-nez v1, :cond_1

    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 482
    :cond_1
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 484
    :cond_2
    array-length v2, p1

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 485
    const-string v2, "Unexpected EOF"

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 486
    const/16 v2, 0x9

    iput v2, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 487
    return-object v4

    .line 489
    :cond_3
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 494
    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_6

    .line 495
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v5, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v5, v2

    aget-char v3, v3, v5

    aget-char v5, p1, v2

    if-eq v3, v5, :cond_5

    .line 496
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 497
    goto :goto_0

    .line 494
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 501
    .end local v2    # "i":I
    :cond_6
    nop

    .line 504
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 505
    .local v2, "end":I
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    array-length v5, p1

    add-int/2addr v3, v5

    iput v3, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 507
    if-nez p2, :cond_7

    .line 508
    return-object v4

    .line 509
    :cond_7
    if-nez v1, :cond_8

    .line 510
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->stringPool:Llibcore/internal/StringPool;

    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    sub-int v5, v2, v0

    invoke-virtual {v3, v4, v0, v5}, Llibcore/internal/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 512
    :cond_8
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    sub-int v4, v2, v0

    invoke-virtual {v1, v3, v0, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private readValue(CZZLorg/kxml2/io/KXmlParser$ValueContext;)Ljava/lang/String;
    .locals 17
    .param p1, "delimiter"    # C
    .param p2, "resolveEntities"    # Z
    .param p3, "throwOnResolveFailure"    # Z
    .param p4, "valueContext"    # Lorg/kxml2/io/KXmlParser$ValueContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1334
    move-object/from16 v2, p4

    iget v3, v0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1335
    .local v3, "start":I
    const/4 v4, 0x0

    .line 1338
    .local v4, "result":Ljava/lang/StringBuilder;
    sget-object v5, Lorg/kxml2/io/KXmlParser$ValueContext;->TEXT:Lorg/kxml2/io/KXmlParser$ValueContext;

    if-ne v2, v5, :cond_0

    iget-object v5, v0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 1339
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v5

    .line 1340
    iget-object v5, v0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1350
    :cond_0
    :goto_0
    iget v5, v0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v6, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    const/4 v7, 0x1

    if-lt v5, v6, :cond_5

    .line 1351
    iget v5, v0, Lorg/kxml2/io/KXmlParser;->position:I

    if-ge v3, v5, :cond_2

    .line 1352
    if-nez v4, :cond_1

    .line 1353
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v5

    .line 1355
    :cond_1
    iget-object v5, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v6, v0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v6, v3

    invoke-virtual {v4, v5, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1357
    :cond_2
    invoke-direct {v0, v7}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1358
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    const-string v5, ""

    :goto_1
    return-object v5

    .line 1360
    :cond_4
    iget v3, v0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1363
    :cond_5
    iget-object v5, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v6, v0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v5, v5, v6

    .line 1365
    .local v5, "c":C
    if-eq v5, v1, :cond_1a

    const/16 v6, 0x3e

    const/16 v8, 0x20

    if-ne v1, v8, :cond_6

    if-le v5, v8, :cond_1a

    if-eq v5, v6, :cond_1a

    :cond_6
    const/16 v9, 0x26

    if-ne v5, v9, :cond_7

    if-nez p2, :cond_7

    .line 1368
    goto/16 :goto_5

    .line 1371
    :cond_7
    const/16 v10, 0x25

    const/16 v11, 0x3c

    const/16 v12, 0xd

    const/16 v13, 0x5d

    const/16 v14, 0xa

    if-eq v5, v12, :cond_c

    if-ne v5, v14, :cond_8

    sget-object v6, Lorg/kxml2/io/KXmlParser$ValueContext;->ATTRIBUTE:Lorg/kxml2/io/KXmlParser$ValueContext;

    if-eq v2, v6, :cond_c

    :cond_8
    if-eq v5, v9, :cond_c

    if-eq v5, v11, :cond_c

    if-ne v5, v13, :cond_9

    sget-object v6, Lorg/kxml2/io/KXmlParser$ValueContext;->TEXT:Lorg/kxml2/io/KXmlParser$ValueContext;

    if-eq v2, v6, :cond_c

    :cond_9
    if-ne v5, v10, :cond_a

    sget-object v6, Lorg/kxml2/io/KXmlParser$ValueContext;->ENTITY_DECLARATION:Lorg/kxml2/io/KXmlParser$ValueContext;

    if-eq v2, v6, :cond_c

    .line 1377
    :cond_a
    iget-boolean v6, v0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    if-gt v5, v8, :cond_b

    move v15, v7

    goto :goto_2

    :cond_b
    const/4 v15, 0x0

    :goto_2
    and-int/2addr v6, v15

    iput-boolean v6, v0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    .line 1378
    iget v6, v0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v6, v7

    iput v6, v0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1379
    goto :goto_0

    .line 1386
    :cond_c
    if-nez v4, :cond_d

    .line 1387
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v6

    .line 1389
    :cond_d
    iget-object v6, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v8, v0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v8, v3

    invoke-virtual {v4, v6, v3, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1391
    const/4 v6, 0x2

    if-ne v5, v12, :cond_11

    .line 1392
    iget v8, v0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v8, v7

    iget v9, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v8, v9, :cond_e

    invoke-direct {v0, v6}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v6

    if-eqz v6, :cond_f

    :cond_e
    iget-object v6, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v8, v0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v8, v7

    aget-char v6, v6, v8

    if-ne v6, v14, :cond_f

    .line 1393
    iget v6, v0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v6, v7

    iput v6, v0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1395
    :cond_f
    sget-object v6, Lorg/kxml2/io/KXmlParser$ValueContext;->ATTRIBUTE:Lorg/kxml2/io/KXmlParser$ValueContext;

    if-ne v2, v6, :cond_10

    const/16 v14, 0x20

    nop

    :cond_10
    move v5, v14

    goto :goto_3

    .line 1397
    :cond_11
    if-ne v5, v14, :cond_12

    .line 1398
    const/16 v5, 0x20

    .line 1427
    :goto_3
    move/from16 v8, p3

    goto :goto_4

    .line 1400
    :cond_12
    if-ne v5, v9, :cond_13

    .line 1401
    const/4 v6, 0x0

    iput-boolean v6, v0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    .line 1402
    move/from16 v8, p3

    invoke-direct {v0, v4, v6, v8, v2}, Lorg/kxml2/io/KXmlParser;->readEntity(Ljava/lang/StringBuilder;ZZLorg/kxml2/io/KXmlParser$ValueContext;)V

    .line 1403
    iget v3, v0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1404
    goto/16 :goto_0

    .line 1406
    :cond_13
    move/from16 v8, p3

    if-ne v5, v11, :cond_15

    .line 1407
    sget-object v6, Lorg/kxml2/io/KXmlParser$ValueContext;->ATTRIBUTE:Lorg/kxml2/io/KXmlParser$ValueContext;

    if-ne v2, v6, :cond_14

    .line 1408
    const-string v6, "Illegal: \"<\" inside attribute value"

    invoke-direct {v0, v6}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1410
    :cond_14
    const/4 v6, 0x0

    iput-boolean v6, v0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    goto :goto_4

    .line 1412
    :cond_15
    if-ne v5, v13, :cond_18

    .line 1413
    iget v9, v0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v9, v6

    iget v10, v0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-lt v9, v10, :cond_16

    const/4 v9, 0x3

    invoke-direct {v0, v9}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v9

    if-eqz v9, :cond_17

    :cond_16
    iget-object v9, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v10, v0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v10, v7

    aget-char v9, v9, v10

    if-ne v9, v13, :cond_17

    iget-object v9, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v10, v0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v10, v6

    aget-char v6, v9, v10

    const/16 v9, 0x3e

    if-ne v6, v9, :cond_17

    .line 1415
    const-string v6, "Illegal: \"]]>\" outside CDATA section"

    invoke-direct {v0, v6}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 1417
    :cond_17
    const/4 v6, 0x0

    iput-boolean v6, v0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    .line 1427
    :goto_4
    iget v6, v0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v6, v7

    iput v6, v0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1428
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1429
    iget v3, v0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1430
    .end local v5    # "c":C
    goto/16 :goto_0

    .line 1419
    .restart local v5    # "c":C
    :cond_18
    if-ne v5, v10, :cond_19

    .line 1420
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    const/4 v7, 0x0

    const-string v9, "This parser doesn\'t support parameter entities"

    invoke-direct {v6, v9, v0, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v6

    .line 1424
    :cond_19
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1432
    .end local v5    # "c":C
    :cond_1a
    :goto_5
    move/from16 v8, p3

    if-nez v4, :cond_1b

    .line 1433
    iget-object v5, v0, Lorg/kxml2/io/KXmlParser;->stringPool:Llibcore/internal/StringPool;

    iget-object v6, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v7, v0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v7, v3

    invoke-virtual {v5, v6, v3, v7}, Llibcore/internal/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1435
    :cond_1b
    iget-object v5, v0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v6, v0, Lorg/kxml2/io/KXmlParser;->position:I

    sub-int/2addr v6, v3

    invoke-virtual {v4, v5, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1436
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private readXmlDeclaration()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 521
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->bufferStartLine:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->bufferStartColumn:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    if-eqz v0, :cond_1

    .line 522
    :cond_0
    const-string v0, "processing instructions must not start with xml"

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 525
    :cond_1
    sget-object v0, Lorg/kxml2/io/KXmlParser;->START_PROCESSING_INSTRUCTION:[C

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->read([C)V

    .line 526
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lorg/kxml2/io/KXmlParser;->parseStartTag(ZZ)V

    .line 528
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    const/4 v2, 0x2

    if-lt v1, v0, :cond_2

    const-string v1, "version"

    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 529
    :cond_2
    const-string v1, "version expected"

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 532
    :cond_3
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v1, v1, v3

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->version:Ljava/lang/String;

    .line 534
    const/4 v1, 0x1

    .line 536
    .local v1, "pos":I
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-ge v1, v4, :cond_4

    const-string v4, "encoding"

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const/4 v6, 0x6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 537
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    iput-object v4, p0, Lorg/kxml2/io/KXmlParser;->encoding:Ljava/lang/String;

    .line 538
    add-int/lit8 v1, v1, 0x1

    .line 541
    :cond_4
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-ge v1, v4, :cond_7

    const-string v4, "standalone"

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    const/4 v6, 0x4

    mul-int v7, v6, v1

    add-int/2addr v7, v2

    aget-object v2, v5, v7

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 542
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    mul-int/2addr v6, v1

    add-int/2addr v3, v6

    aget-object v2, v2, v3

    .line 543
    .local v2, "st":Ljava/lang/String;
    const-string v3, "yes"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 544
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, p0, Lorg/kxml2/io/KXmlParser;->standalone:Ljava/lang/Boolean;

    goto :goto_0

    .line 545
    :cond_5
    const-string v3, "no"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 546
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, p0, Lorg/kxml2/io/KXmlParser;->standalone:Ljava/lang/Boolean;

    goto :goto_0

    .line 548
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal standalone value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 550
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 553
    .end local v2    # "st":Ljava/lang/String;
    :cond_7
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-eq v1, v2, :cond_8

    .line 554
    const-string v2, "unexpected attributes in XML declaration"

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->checkRelaxed(Ljava/lang/String;)V

    .line 557
    :cond_8
    iput-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    .line 558
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    .line 559
    return-void
.end method

.method private skip()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1594
    :goto_0
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlParser;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1595
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    aget-char v0, v0, v1

    .line 1596
    .local v0, "c":I
    const/16 v1, 0x20

    if-le v0, v1, :cond_2

    .line 1597
    nop

    .line 1601
    .end local v0    # "c":I
    :cond_1
    return-void

    .line 1599
    .restart local v0    # "c":I
    :cond_2
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1600
    .end local v0    # "c":I
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1756
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    if-eqz v0, :cond_0

    .line 1757
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 1759
    :cond_0
    return-void
.end method

.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "entity"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1779
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->processDocDecl:Z

    if-nez v0, :cond_2

    .line 1783
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    if-eqz v0, :cond_1

    .line 1787
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1788
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    .line 1790
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1791
    return-void

    .line 1784
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Entity replacement text must be defined after setInput()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1780
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Entity replacement text may not be defined with DOCTYPE processing enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeCount()I
    .locals 1

    .line 1993
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 2012
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-ge p1, v0, :cond_0

    .line 2015
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    return-object v0

    .line 2013
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 2005
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-ge p1, v0, :cond_0

    .line 2008
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x4

    aget-object v0, v0, v1

    return-object v0

    .line 2006
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 2019
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-ge p1, v0, :cond_0

    .line 2022
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0

    .line 2020
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 1997
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 2026
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    if-ge p1, v0, :cond_0

    .line 2029
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x3

    aget-object v0, v0, v1

    return-object v0

    .line 2027
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 2033
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x4

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2034
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 2035
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2036
    :cond_0
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x3

    aget-object v1, v1, v2

    return-object v1

    .line 2033
    :cond_1
    add-int/lit8 v0, v0, -0x4

    goto :goto_0

    .line 2040
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColumnNumber()I
    .locals 4

    .line 1932
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->bufferStartColumn:I

    .line 1933
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    if-ge v1, v2, :cond_1

    .line 1934
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    aget-char v2, v2, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 1935
    const/4 v0, 0x0

    goto :goto_1

    .line 1937
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1933
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1940
    .end local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public getDepth()I
    .locals 1

    .line 1865
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    return v0
.end method

.method public getEventType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2044
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;

    .line 1762
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1763
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->processNsp:Z

    return v0

    .line 1764
    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/features.html#relaxed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1765
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    return v0

    .line 1766
    :cond_1
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1767
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->processDocDecl:Z

    return v0

    .line 1769
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .line 1774
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 4

    .line 1922
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->bufferStartLine:I

    .line 1923
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->position:I

    if-ge v1, v2, :cond_1

    .line 1924
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    aget-char v2, v2, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 1925
    add-int/lit8 v0, v0, 0x1

    .line 1923
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1928
    .end local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1978
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 1974
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;

    .line 1845
    const-string v0, "xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1846
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    return-object v0

    .line 1848
    :cond_0
    const-string v0, "xmlns"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1849
    const-string v0, "http://www.w3.org/2000/xmlns/"

    return-object v0

    .line 1852
    :cond_1
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    invoke-virtual {p0, v0}, Lorg/kxml2/io/KXmlParser;->getNamespaceCount(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 1853
    if-nez p1, :cond_2

    .line 1854
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    .line 1855
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    return-object v1

    .line 1857
    :cond_2
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1858
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    return-object v1

    .line 1852
    :cond_3
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 1861
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespaceCount(I)I
    .locals 1
    .param p1, "depth"    # I

    .line 1830
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    if-gt p1, v0, :cond_0

    .line 1833
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nspCounts:[I

    aget v0, v0, p1

    return v0

    .line 1831
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 2
    .param p1, "pos"    # I

    .line 1837
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .locals 2
    .param p1, "pos"    # I

    .line 1841
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 7

    .line 1869
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    sget-object v2, Lorg/kxml2/io/KXmlParser;->TYPES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    sget-object v1, Lorg/kxml2/io/KXmlParser;->TYPES:[Ljava/lang/String;

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->type:I

    aget-object v1, v1, v2

    goto :goto_0

    :cond_0
    const-string v1, "unknown"

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1870
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1872
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-eq v2, v4, :cond_6

    iget v2, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-ne v2, v6, :cond_1

    goto :goto_1

    .line 1896
    :cond_1
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    goto/16 :goto_3

    .line 1898
    :cond_2
    iget v1, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-eq v1, v5, :cond_3

    .line 1899
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1900
    :cond_3
    iget-boolean v1, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    if-eqz v1, :cond_4

    .line 1901
    const-string v1, "(whitespace)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1903
    :cond_4
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 1904
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x10

    if-le v2, v4, :cond_5

    .line 1905
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1907
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v1    # "text":Ljava/lang/String;
    goto/16 :goto_3

    .line 1873
    :cond_6
    :goto_1
    iget-boolean v2, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    if-eqz v2, :cond_7

    .line 1874
    const-string v2, "(empty) "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1876
    :cond_7
    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1877
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-ne v2, v6, :cond_8

    .line 1878
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1881
    :cond_8
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 1882
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "}"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1884
    :cond_9
    iget-object v2, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1886
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    mul-int/2addr v2, v5

    .line 1887
    .local v2, "cnt":I
    nop

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_b

    .line 1888
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1889
    iget-object v4, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_a

    .line 1890
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1892
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v3, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v3, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1887
    add-int/lit8 v3, v3, 0x4

    goto :goto_2

    .line 1895
    .end local v3    # "i":I
    :cond_b
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1896
    .end local v2    # "cnt":I
    nop

    .line 1910
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1911
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 1912
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1913
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1914
    :cond_c
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    if-eqz v1, :cond_d

    .line 1915
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1916
    iget-object v1, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1918
    :cond_d
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 1982
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;

    .line 1794
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#xmldecl-version"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1795
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->version:Ljava/lang/String;

    return-object v0

    .line 1796
    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#xmldecl-standalone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1797
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->standalone:Ljava/lang/Boolean;

    return-object v0

    .line 1798
    :cond_1
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1799
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1801
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .line 1826
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method public getRootElementName()Ljava/lang/String;
    .locals 1

    .line 1810
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->rootElementName:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .line 1818
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .line 1951
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->unresolved:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1953
    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1954
    const-string v0, ""

    return-object v0

    .line 1956
    :cond_1
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser;->text:Ljava/lang/String;

    return-object v0

    .line 1952
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextCharacters([I)[C
    .locals 4
    .param p1, "poslen"    # [I

    .line 1961
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1962
    .local v0, "text":Ljava/lang/String;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1963
    const/4 v3, -0x1

    aput v3, p1, v2

    .line 1964
    aput v3, p1, v1

    .line 1965
    const/4 v1, 0x0

    return-object v1

    .line 1967
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 1968
    .local v3, "result":[C
    aput v2, p1, v2

    .line 1969
    array-length v2, v3

    aput v2, p1, v1

    .line 1970
    return-object v3
.end method

.method public isAttributeDefault(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 2001
    const/4 v0, 0x0

    return v0
.end method

.method public isEmptyElementTag()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1986
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1989
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    return v0

    .line 1987
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const/4 v1, 0x0

    const-string v2, "Wrong event type"

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isWhitespace()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1944
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1945
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const/4 v1, 0x0

    const-string v2, "Wrong event type"

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1947
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    return v0
.end method

.method public keepNamespaceAttributes()V
    .locals 1

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->keepNamespaceAttributes:Z

    .line 192
    return-void
.end method

.method public next()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->next(Z)I

    move-result v0

    return v0
.end method

.method public nextTag()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2050
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->next()I

    .line 2051
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->isWhitespace:Z

    if-eqz v0, :cond_0

    .line 2052
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->next()I

    .line 2055
    :cond_0
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 2056
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const/4 v1, 0x0

    const-string v2, "unexpected type"

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 2059
    :cond_2
    :goto_0
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    return v0
.end method

.method public nextText()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2073
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 2077
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->next()I

    .line 2080
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 2081
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 2082
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->next()I

    goto :goto_0

    .line 2084
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    .line 2087
    .restart local v0    # "result":Ljava/lang/String;
    :goto_0
    iget v2, p0, Lorg/kxml2/io/KXmlParser;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 2091
    return-object v0

    .line 2088
    :cond_1
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "END_TAG expected"

    invoke-direct {v2, v3, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 2074
    .end local v0    # "result":Ljava/lang/String;
    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "precondition: START_TAG"

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public nextToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlParser;->next(Z)I

    move-result v0

    return v0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2064
    iget v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_0

    .line 2065
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    .line 2066
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2070
    :cond_1
    return-void

    .line 2067
    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/kxml2/io/KXmlParser;->TYPES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2095
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2096
    iput-boolean p2, p0, Lorg/kxml2/io/KXmlParser;->processNsp:Z

    goto :goto_0

    .line 2097
    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2098
    iput-boolean p2, p0, Lorg/kxml2/io/KXmlParser;->processDocDecl:Z

    goto :goto_0

    .line 2099
    :cond_1
    const-string v0, "http://xmlpull.org/v1/doc/features.html#relaxed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2100
    iput-boolean p2, p0, Lorg/kxml2/io/KXmlParser;->relaxed:Z

    .line 2104
    :goto_0
    return-void

    .line 2102
    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 11
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1631
    const/4 v0, 0x0

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1632
    iput v0, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    .line 1633
    const/4 v1, 0x1

    if-nez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 1635
    .local v2, "detectCharset":Z
    :goto_0
    if-eqz p1, :cond_12

    .line 1640
    const v3, 0xfeff

    if-eqz v2, :cond_f

    .line 1642
    move v4, v0

    .line 1643
    .local v4, "firstFourBytes":I
    :goto_1
    :try_start_0
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    const/4 v6, 0x4

    const/4 v7, -0x1

    if-ge v5, v6, :cond_2

    .line 1644
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 1645
    .local v5, "i":I
    if-ne v5, v7, :cond_1

    .line 1646
    goto :goto_2

    .line 1648
    :cond_1
    shl-int/lit8 v6, v4, 0x8

    or-int v4, v6, v5

    .line 1649
    iget-object v6, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v7, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    int-to-char v8, v5

    aput-char v8, v6, v7

    .line 1650
    .end local v5    # "i":I
    goto :goto_1

    .line 1652
    :cond_2
    :goto_2
    iget v5, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    if-ne v5, v6, :cond_f

    .line 1653
    const/high16 v5, -0x20000

    if-eq v4, v5, :cond_e

    const/16 v6, 0x3c

    if-eq v4, v6, :cond_d

    if-eq v4, v3, :cond_c

    const v8, 0x3c003f

    const/16 v9, 0x3f

    const/4 v10, 0x2

    if-eq v4, v8, :cond_b

    const/high16 v8, 0x3c000000    # 0.0078125f

    if-eq v4, v8, :cond_a

    const v8, 0x3c003f00

    if-eq v4, v8, :cond_9

    const v6, 0x3c3f786d

    if-eq v4, v6, :cond_5

    .line 1715
    const/high16 v6, -0x10000

    and-int v7, v4, v6

    const/high16 v8, -0x1010000

    const/4 v9, 0x3

    if-ne v7, v8, :cond_3

    .line 1716
    const-string v5, "UTF-16BE"

    move-object p2, v5

    .line 1717
    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget-object v6, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    aget-char v6, v6, v10

    shl-int/lit8 v6, v6, 0x8

    iget-object v7, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    aget-char v7, v7, v9

    or-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v5, v0

    .line 1718
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    goto/16 :goto_5

    .line 1719
    :cond_3
    and-int/2addr v6, v4

    if-ne v6, v5, :cond_4

    .line 1720
    const-string v5, "UTF-16LE"

    move-object p2, v5

    .line 1721
    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget-object v6, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    aget-char v6, v6, v9

    shl-int/lit8 v6, v6, 0x8

    iget-object v7, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    aget-char v7, v7, v10

    or-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v5, v0

    .line 1722
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    goto/16 :goto_5

    .line 1723
    :cond_4
    and-int/lit16 v5, v4, -0x100

    const v6, -0x10444100

    if-ne v5, v6, :cond_f

    .line 1724
    const-string v5, "UTF-8"

    move-object p2, v5

    .line 1725
    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget-object v6, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    aget-char v6, v6, v9

    aput-char v6, v5, v0

    .line 1726
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    .end local v4    # "firstFourBytes":I
    goto/16 :goto_5

    .line 1692
    .restart local v4    # "firstFourBytes":I
    :cond_5
    :goto_3
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 1693
    .restart local v5    # "i":I
    if-ne v5, v7, :cond_6

    .line 1694
    goto/16 :goto_5

    .line 1696
    :cond_6
    iget-object v6, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v8, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    int-to-char v9, v5

    aput-char v9, v6, v8

    .line 1697
    const/16 v6, 0x3e

    if-ne v5, v6, :cond_8

    .line 1698
    new-instance v6, Ljava/lang/String;

    iget-object v8, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v9, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    invoke-direct {v6, v8, v0, v9}, Ljava/lang/String;-><init>([CII)V

    .line 1699
    .local v6, "s":Ljava/lang/String;
    const-string v8, "encoding"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 1700
    .local v8, "i0":I
    if-eq v8, v7, :cond_f

    .line 1701
    :goto_4
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x22

    if-eq v7, v9, :cond_7

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x27

    if-eq v7, v9, :cond_7

    .line 1702
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1704
    :cond_7
    add-int/lit8 v7, v8, 0x1

    .local v7, "i0":I
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1705
    .local v8, "deli":C
    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    .line 1706
    .local v9, "i1":I
    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move-object p2, v10

    .line 1707
    .end local v8    # "deli":C
    .end local v9    # "i1":I
    goto :goto_5

    .line 1710
    .end local v5    # "i":I
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "i0":I
    :cond_8
    goto :goto_3

    .line 1684
    :cond_9
    const-string v5, "UTF-16LE"

    move-object p2, v5

    .line 1685
    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    aput-char v6, v5, v0

    .line 1686
    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    aput-char v9, v5, v1

    .line 1687
    iput v10, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    .line 1688
    goto :goto_5

    .line 1671
    :cond_a
    const-string v5, "UTF-32LE"

    move-object p2, v5

    .line 1672
    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    aput-char v6, v5, v0

    .line 1673
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    .line 1674
    goto :goto_5

    .line 1677
    :cond_b
    const-string v5, "UTF-16BE"

    move-object p2, v5

    .line 1678
    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    aput-char v6, v5, v0

    .line 1679
    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    aput-char v9, v5, v1

    .line 1680
    iput v10, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    .line 1681
    goto :goto_5

    .line 1655
    :cond_c
    const-string v5, "UTF-32BE"

    move-object p2, v5

    .line 1656
    iput v0, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    .line 1657
    goto :goto_5

    .line 1665
    :cond_d
    const-string v5, "UTF-32BE"

    move-object p2, v5

    .line 1666
    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    aput-char v6, v5, v0

    .line 1667
    iput v1, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    .line 1668
    goto :goto_5

    .line 1660
    :cond_e
    const-string v5, "UTF-32LE"

    move-object p2, v5

    .line 1661
    iput v0, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    .line 1662
    goto :goto_5

    .line 1750
    .end local v4    # "firstFourBytes":I
    :catch_0
    move-exception v0

    goto :goto_6

    .line 1732
    :cond_f
    :goto_5
    if-nez p2, :cond_10

    .line 1733
    const-string v4, "UTF-8"

    move-object p2, v4

    .line 1736
    :cond_10
    iget v4, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    .line 1737
    .local v4, "savedLimit":I
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lorg/kxml2/io/KXmlParser;->setInput(Ljava/io/Reader;)V

    .line 1738
    iput-object p2, p0, Lorg/kxml2/io/KXmlParser;->encoding:Ljava/lang/String;

    .line 1739
    iput v4, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    .line 1746
    if-nez v2, :cond_11

    invoke-direct {p0}, Lorg/kxml2/io/KXmlParser;->peekCharacter()I

    move-result v5

    if-ne v5, v3, :cond_11

    .line 1747
    iget v3, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    .line 1748
    iget-object v3, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget-object v5, p0, Lorg/kxml2/io/KXmlParser;->buffer:[C

    iget v6, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    invoke-static {v3, v1, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1752
    .end local v4    # "savedLimit":I
    :cond_11
    nop

    .line 1753
    return-void

    .line 1750
    :goto_6
    nop

    .line 1751
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid stream or encoding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 1636
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "is == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInput(Ljava/io/Reader;)V
    .locals 3
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1606
    iput-object p1, p0, Lorg/kxml2/io/KXmlParser;->reader:Ljava/io/Reader;

    .line 1608
    const/4 v0, 0x0

    iput v0, p0, Lorg/kxml2/io/KXmlParser;->type:I

    .line 1609
    iput-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->parsedTopLevelStartTag:Z

    .line 1610
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->name:Ljava/lang/String;

    .line 1611
    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->namespace:Ljava/lang/String;

    .line 1612
    iput-boolean v0, p0, Lorg/kxml2/io/KXmlParser;->degenerated:Z

    .line 1613
    const/4 v2, -0x1

    iput v2, p0, Lorg/kxml2/io/KXmlParser;->attributeCount:I

    .line 1614
    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->encoding:Ljava/lang/String;

    .line 1615
    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->version:Ljava/lang/String;

    .line 1616
    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->standalone:Ljava/lang/Boolean;

    .line 1618
    if-nez p1, :cond_0

    .line 1619
    return-void

    .line 1622
    :cond_0
    iput v0, p0, Lorg/kxml2/io/KXmlParser;->position:I

    .line 1623
    iput v0, p0, Lorg/kxml2/io/KXmlParser;->limit:I

    .line 1624
    iput v0, p0, Lorg/kxml2/io/KXmlParser;->bufferStartLine:I

    .line 1625
    iput v0, p0, Lorg/kxml2/io/KXmlParser;->bufferStartColumn:I

    .line 1626
    iput v0, p0, Lorg/kxml2/io/KXmlParser;->depth:I

    .line 1627
    iput-object v1, p0, Lorg/kxml2/io/KXmlParser;->documentEntities:Ljava/util/Map;

    .line 1628
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2107
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2108
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/kxml2/io/KXmlParser;->location:Ljava/lang/String;

    .line 2112
    return-void

    .line 2110
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
